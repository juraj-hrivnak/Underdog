#priority -10
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    if (isNull(event.player) || isNull(event.player.currentItem)) {
        event.player.removeGameStage("map");

    } else {
        if event.player.currentItem.name == <minecraft:compass>.name {
            event.player.addGameStage("map");
        } else {
            event.player.removeGameStage("map");
        }
    }

});

