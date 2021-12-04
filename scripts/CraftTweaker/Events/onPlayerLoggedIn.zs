
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.server.IServer;


events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	server.commandManager.executeCommand(server, "/gamerule sendCommandFeedback false");
});