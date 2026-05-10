import net.minecraftforge.event.entity.living.LivingAttackEvent
import net.minecraftforge.event.entity.living.LivingEvent.LivingUpdateEvent
import net.minecraftforge.fml.common.eventhandler.EventPriority

import net.minecraft.entity.EntityLivingBase
import net.minecraft.entity.passive.EntityAnimal
import net.minecraft.entity.player.EntityPlayer
import net.minecraft.entity.ai.EntityAIAttackMelee
import net.minecraft.entity.ai.EntityAINearestAttackableTarget
import net.minecraft.entity.SharedMonsterAttributes
import net.minecraft.util.EntityDamageSource
import net.minecraft.world.World

import com.animania.api.interfaces.ISleeping
import com.animania.common.helper.AnimaniaHelper

import com.animania.addons.farm.common.entity.pigs.EntityHogBase
import com.animania.addons.farm.common.entity.pigs.EntitySowBase
import com.animania.addons.farm.common.entity.cows.EntityBullBase

import groovy.transform.Field

// entityId -> target, attack cooldown ticks, and anger duration
@Field Map<Integer, EntityLivingBase> enragedPigs = new HashMap<>()
@Field Map<Integer, Integer> pigCooldown = new HashMap<>()
@Field Map<Integer, Integer> pigAngerTimer = new HashMap<>()
@Field Set<Integer> pigAiReady = new HashSet<>()

def wakeUp(EntityLivingBase entity) {
    ISleeping s = (ISleeping) entity
    if (s.getSleeping()) {
        s.setSleeping(false)
    }
}

def enrageHog(EntityAnimal hog, EntityLivingBase attacker) {
    wakeUp(hog)
    if (!pigAiReady.contains(hog.entityId)) {
        // Register ATTACK_DAMAGE so EntityAIAttackMelee can use it
        if (hog.getAttributeMap().getAttributeInstance(SharedMonsterAttributes.ATTACK_DAMAGE) == null) {
            hog.getAttributeMap().registerAttribute(SharedMonsterAttributes.ATTACK_DAMAGE).setBaseValue(4.0d)
        }
        // Inject attack + target AI exactly like the bull has natively
        Class playerClass = EntityPlayer.class
        hog.tasks.addTask(2, new EntityAIAttackMelee(hog, 1.0d, false))
        hog.targetTasks.addTask(1, new EntityAINearestAttackableTarget(hog, playerClass, true))
        pigAiReady.add(hog.entityId)
    }
    hog.setAttackTarget(attacker)
    hog.getEntityAttribute(SharedMonsterAttributes.MOVEMENT_SPEED).setBaseValue(0.32d)
    enragedPigs.put(hog.entityId, attacker)
    pigAngerTimer.put(hog.entityId, 400)
}

def enrageBull(EntityBullBase bull, EntityLivingBase attacker) {
    wakeUp(bull)
    bull.setFighting(true)
    bull.setAttackTarget(attacker)
    bull.getEntityAttribute(SharedMonsterAttributes.MOVEMENT_SPEED).setBaseValue(0.35d)
}

def rallyNearby(EntityAnimal animal, EntityLivingBase attacker, boolean isBull) {
    World world = animal.world
    List nearby
    if (isBull) {
        nearby = AnimaniaHelper.getEntitiesInRange(EntityBullBase, 16, world, animal)
    } else {
        nearby = AnimaniaHelper.getEntitiesInRange(EntityHogBase, 16, world, animal)
        List nearbySows = AnimaniaHelper.getEntitiesInRange(EntitySowBase, 16, world, animal)
        nearby.addAll(nearbySows)
    }
    Iterator it = nearby.iterator()
    while (it.hasNext()) {
        EntityLivingBase neighbour = (EntityLivingBase) it.next()
        if (neighbour.entityId == animal.entityId) continue
        if (isBull) {
            enrageBull((EntityBullBase) neighbour, attacker)
        } else {
            enrageHog((EntityAnimal) neighbour, attacker)
        }
    }
}

def onHurt(LivingAttackEvent event) {
    EntityLivingBase victim = event.entityLiving
    if (victim == null) return
    if (victim.world.isRemote) return

    boolean isBull = victim instanceof EntityBullBase
    boolean isHog  = victim instanceof EntityHogBase
    boolean isSow  = victim instanceof EntitySowBase
    if (!isBull && !isHog && !isSow) return

    Object src = event.source.getTrueSource()
    if (!(src instanceof EntityLivingBase)) return
    EntityLivingBase attacker = (EntityLivingBase) src

    if (isBull) {
        enrageBull((EntityBullBase) victim, attacker)
        rallyNearby((EntityAnimal) victim, attacker, true)
    } else {
        enrageHog((EntityAnimal) victim, attacker)
        rallyNearby((EntityAnimal) victim, attacker, false)
    }
}

event_manager.listen(EventPriority.LOWEST) { LivingAttackEvent event -> onHurt(event) }

def onPigTick(LivingUpdateEvent event) {
    if (event.entityLiving == null) return
    if (event.entityLiving.world.isRemote) return
    boolean isHog = event.entityLiving instanceof EntityHogBase
    boolean isSow = event.entityLiving instanceof EntitySowBase
    if (!isHog && !isSow) return

    EntityAnimal pig = (EntityAnimal) event.entityLiving
    EntityLivingBase target = enragedPigs.get(pig.entityId)
    if (target == null) return

    if (pig.isDead || target.isDead) {
        enragedPigs.remove(pig.entityId)
        pigCooldown.remove(pig.entityId)
        pigAngerTimer.remove(pig.entityId)
        pig.getEntityAttribute(SharedMonsterAttributes.MOVEMENT_SPEED).setBaseValue(0.265d)
        return
    }

    // Calm down when timer runs out or target is out of range (>32 blocks)
    int anger = pigAngerTimer.getOrDefault(pig.entityId, 0)
    if (anger <= 0 || pig.getDistanceSq(target) > 1024.0d) {
        enragedPigs.remove(pig.entityId)
        pigCooldown.remove(pig.entityId)
        pigAngerTimer.remove(pig.entityId)
        pig.setAttackTarget(null)
        pig.getEntityAttribute(SharedMonsterAttributes.MOVEMENT_SPEED).setBaseValue(0.265d)
        return
    }
    pigAngerTimer.put(pig.entityId, anger - 1)

    // Keep attack target asserted every tick so the injected AI keeps chasing
    pig.setAttackTarget(target)

    int cd = pigCooldown.getOrDefault(pig.entityId, 0)
    if (cd > 0) {
        pigCooldown.put(pig.entityId, cd - 1)
        return
    }
    if (pig.getDistanceSq(target) <= 6.25d) {
        target.attackEntityFrom(new EntityDamageSource("mob", pig), 4.0f)
        pigCooldown.put(pig.entityId, 20)
    }
}

event_manager.listen(EventPriority.NORMAL) { LivingUpdateEvent event -> onPigTick(event) }
