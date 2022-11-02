
#loader crafttweaker reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import crafttweaker.oredict.IOreDictEntry;
import mods.zenutils.Catenation;

import scripts.CraftTweaker.Utils.CommandUtils;

val canPlay as bool[] = [true];
val doCatenation as bool[] = [true];

val materialsAndSounds as string[IMaterial] = {
    IMaterial.iron()    : "futuremc:lantern_place",
    IMaterial.rock()    : "asmc:block.basalt.break",
    IMaterial.wood()    : "tconstruct:wood_hit",
    IMaterial.ground()  : "minecraft:block.grass.place",
    IMaterial.cloth()   : "minecraft:block.cloth.break",
    IMaterial.glass()   : "tconstruct:wood_hit",
    IMaterial.piston()  : "tconstruct:frypan_hit",
};

val oredictsAndSounds as string[IOreDictEntry] = {
    <ore:rocks>         : "asmc:block.basalt.hit",
    <ore:lumber>        : "tconstruct:wood_hit",
    <ore:stickWood>     : "tconstruct:little_saw",
    <ore:workbench>     : "tconstruct:wood_hit"
};

function playSounds(event as crafttweaker.event.PlayerCraftedEvent, canPlay as bool[], materialsAndSounds as string[IMaterial], oredictsAndSounds as string[IOreDictEntry]) as void {
    for oredict, sound in oredictsAndSounds {
        if (event.output.ores has oredict) {
            CommandUtils.playsound(sound, "player", event.player);
            canPlay[0] = false;
            return;
        }
    }

    if (event.output.isItemBlock) {
        val blockMaterial = event.output.asBlock().definition.defaultState.material;

        for material, sound in materialsAndSounds {
            if (blockMaterial.matches(material)) {
                CommandUtils.playsound(sound, "player", event.player);
                canPlay[0] = false;
                return;
            }
        }
    }
}

events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent) {
	if (isNull(event.player.world) || event.player.world.isRemote()) {
		return;
	}

    // Crafting sounds
    if (canPlay[0]) {
        playSounds(event, canPlay, materialsAndSounds, oredictsAndSounds);
    }

    // Time offset
    if (!canPlay[0] && doCatenation[0]) {
        event.player.world.catenation()
            .sleep(1)
            .run(function(world, context) {
                canPlay[0] = true;
                doCatenation[0] = true;
            })
            .stopWhen(function(world, context) {
                return !event.player.alive;
            })
            .start();
        doCatenation[0] = false;
    }
});
