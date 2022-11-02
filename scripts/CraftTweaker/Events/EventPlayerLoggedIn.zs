
#loader crafttweaker reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;


events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	if (isNull(event.player.world) || event.player.world.isRemote()) {
		return;
	}

	server.commandManager.executeCommand(server, "/gamerule sendCommandFeedback false");
});
