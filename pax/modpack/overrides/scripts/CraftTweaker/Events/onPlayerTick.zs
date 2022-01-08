
#loader crafttweaker reloadableevents
#priority -10
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;

import crafttweaker.world.IBlockPos;
import mods.contenttweaker.Commands;
import mods.zenutils.DelayManager;


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {

    if !event.player.hasGameStage("permMap") {

        val defaultPreviousItemData as IData = {previousItemName: ""};
        val merged = defaultPreviousItemData + event.player.data;

        if isNull(event.player.currentItem) {
            if merged.previousItemName == <minecraft:compass>.name {
                event.player.removeGameStage("map");
            }
            event.player.update({ previousItemName : "" });
        } else {
            if merged.previousItemName != event.player.currentItem.name {
                if event.player.currentItem.name == <minecraft:compass>.name {
                    event.player.addGameStage("map");
                } else {
                    if merged.previousItemName == <minecraft:compass>.name {
                        event.player.removeGameStage("map");
                    }
                }
            }
            event.player.update({ previousItemName : event.player.currentItem.name });
        }
    } else {
        if !event.player.hasGameStage("map") {
            event.player.addGameStage("map");
        }
    }


    // if event.player.world.getBiome(event.player.position).name == "Ocean" {
    //     if (event.player.world.getBlockState(crafttweaker.util.Position3f.create(event.player.x, 60, event.player.z).asBlockPos()) == <blockstate:minecraft:water> &&
    //         event.player.world.getBlockState(event.player.position) == <blockstate:minecraft:water>) {

    //         // Commands.call("particle endRod " + event.player.x + " " + (event.player.y - 0.8) + " " + event.player.z + " 0.1 0.1 0.1 0.08 3 normal @a", event.player, event.player.world);
    //     }
    // }


});
