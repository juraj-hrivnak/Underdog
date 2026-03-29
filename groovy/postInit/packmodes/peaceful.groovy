import net.minecraftforge.event.entity.EntityJoinWorldEvent
import net.minecraftforge.fml.common.eventhandler.EventPriority

if (!isPackmode('peaceful')) return

// Mobs banned in peaceful mode (mirrors badmobs.cfg bannedMobs list)
Set<String> BANNED_MOBS = [
    'minecraft:ocelot',
    'minecraft:elder_guardian',
    'minecraft:stray',
    'minecraft:husk',
    'minecraft:zombie_villager',
    'minecraft:evocation_illager',
    'minecraft:vex',
    'minecraft:illusion_illager',
    'minecraft:creeper',
    'minecraft:skeleton',
    'minecraft:spider',
    'minecraft:giant',
    'minecraft:zombie',
    'minecraft:slime',
    'minecraft:enderman',
    'minecraft:wither',
    'minecraft:witch',
    'minecraft:endermite',
    'minecraft:guardian',
    'minecraft:shulker',
    'minecraft:zombie_horse',
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

    def regName = net.minecraft.entity.EntityList.getKey(event.entity)
    
    if (regName != null && BANNED_MOBS.contains(regName.toString())) {
        event.setCanceled(true)
    }
}
