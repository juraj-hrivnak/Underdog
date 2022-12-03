
import mods.zenutils.ftbq.CustomTaskEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;


// Tree chop task
events.onCustomTask(function(event as CustomTaskEvent) {
    if (event.task.hasTag("treechop")) {
        event.maxProgress = 1;
        event.checkTimer = 120;
        event.enableButton = true;
        event.checker = function(player, currentProgress) {
            if (player.data has "treeChop" && player.data.treeChop == true) return 1; else return 0;
        };
    }
});
