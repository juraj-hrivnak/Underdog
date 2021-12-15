
#loader crafttweaker reloadableevents
#priority -10
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;


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
});
