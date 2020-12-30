#priority -10
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    if isNull(event.player.currentItem) {
        val defaultData as IData = {previousItemName: ""};
        val merged = defaultData + event.player.data;
        
        if merged.previousItemName == <minecraft:compass>.name {
            event.player.removeGameStage("map");
        }
        event.player.update({ previousItemName : "" });
    } else {
        if (event.player.data.previousItemName != event.player.currentItem.name) {
            if event.player.currentItem.name == <minecraft:compass>.name {
                event.player.addGameStage("map");
            } else {
                event.player.removeGameStage("map");
            }
        }
        event.player.update({ previousItemName : event.player.currentItem.name });
    }
});