import net.minecraftforge.event.entity.EntityJoinWorldEvent
import net.minecraftforge.fml.common.eventhandler.EventPriority
import net.minecraft.entity.monster.EntityZombieVillager
import net.minecraft.entity.monster.EntityZombie
import net.minecraft.entity.monster.EntityMob
import net.minecraft.entity.SharedMonsterAttributes
import net.minecraft.entity.EntityList
import net.minecraft.potion.PotionEffect
import net.minecraft.init.MobEffects

if (!isPackmode('hostile')) return

// Mobs banned in hostile mode
Set<String> BANNED_MOBS = [
    'minecraft:ocelot',
    'minecraft:elder_guardian',
    // 'minecraft:stray',
    // 'minecraft:husk',
    // 'minecraft:zombie_villager',
    // 'minecraft:evocation_illager',
    // 'minecraft:vex',
    // 'minecraft:illusion_illager',
    'minecraft:creeper',
    'minecraft:skeleton',
    'minecraft:spider',
    // 'minecraft:giant',
    // 'minecraft:zombie',
    // 'minecraft:slime',
    'minecraft:enderman',
    'minecraft:wither',
    'minecraft:witch',
    'minecraft:endermite',
    'minecraft:guardian',
    'minecraft:shulker',
    // 'minecraft:zombie_horse',
    'minecraft:villager_golem',
    'minecraft:blaze',
    'minecraft:magma_cube',
    'minecraft:wither_skeleton',
    'minecraft:mooshroom',
    'faunaandecology:wildmooshroom',
    'mocreatures:horsemob',
    'mocreatures:minigolem',
    'mocreatures:biggolem',
    'mocreatures:scorpion',
    'mocreatures:flamewraith',
    'mocreatures:wraith',
    'mocreatures:greenogre',
    'mocreatures:caveogre',
    'mocreatures:fireogre',
    'mocreatures:plainmanticore',
    'mocreatures:firemanticore',
    'mocreatures:toxicmanticore',
    'mocreatures:darkmanticore',
    'mocreatures:frostmanticore',
    'mocreatures:hellrat',
    'mocreatures:werewolf',
    'mocreatures:wwolf',
    'mocreatures:silverskeleton',
    'mocreatures:wyvern',
    'mocreatures:ent',
    'mocreatures:goat',
    'mocreatures:wildhorse',
    'mekanism:babyskeleton',
    'thermalfoundation:blizz',
    'thermalfoundation:blitz',
    'thermalfoundation:basalz',
] as Set

event_manager.listen(EventPriority.HIGHEST) { EntityJoinWorldEvent event ->
    if (event.entity == null) return

    // Cancel baby zombies
    if (event.entity instanceof EntityZombie && ((EntityZombie) event.entity).isChild()) {
        event.setCanceled(true)
        return
    }

    // Cancel jockeys (hostile mob riding another entity) and remove the mount
    if (event.entity instanceof EntityMob && event.entity.isRiding()) {
        def mount = event.entity.getRidingEntity()
        event.entity.dismountRidingEntity()
        if (mount != null) mount.setDead()
        event.setCanceled(true)
        return
    }

    def regName = EntityList.getKey(event.entity)

    if (regName != null && BANNED_MOBS.contains(regName.toString())) {
        event.setCanceled(true)
    }
}

Random rng = new Random()

// Randomize zombie villager profession and speed on spawn
float[] SPEEDS = [1.0f, 1.1f, 1.15f, 1.2f, 1.25f, 1.3f] as float[]

event_manager.listen(EventPriority.LOWEST) { EntityJoinWorldEvent event ->
    if (event.entity == null) return
    if (!(event.entity instanceof EntityZombieVillager)) return

    EntityZombieVillager zv = (EntityZombieVillager) event.entity

    // Random profession (0-5)
    zv.setProfession(rng.nextInt(6))

    // Random speed
    float speed = SPEEDS[rng.nextInt(SPEEDS.length)]
    zv.getEntityAttribute(SharedMonsterAttributes.MOVEMENT_SPEED).setBaseValue(speed * 0.23d)

}
