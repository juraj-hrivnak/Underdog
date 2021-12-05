
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.server.IServer;
import crafttweaker.world.IFacing;
import mods.zenutils.DelayManager;
import mods.contenttweaker.Commands;


events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

	val wedges as IBlockState[IBlockState] = {
		<blockstate:contenttweaker:splitting_wedge_hammered> 	: <blockstate:minecraft:air>,
		<blockstate:contenttweaker:splitting_wedge>				: <blockstate:minecraft:air>
	};

	// Checking for the ~ ~ ~ block
	if (wedges.keySet has event.blockState) {
		
		// Replacing the ~ ~ ~ block
		event.world.setBlockState(wedges[event.blockState], event.position);
		event.player.give(<contenttweaker:splitting_wedge>);
	}

	if (event.blockState == <blockstate:crocodilite:stone>) {
		
		if (event.world.getBlockState(event.position.getOffset(IFacing.up, 1)) == <blockstate:contenttweaker:pick_up_block>) {

			// Replacing the ~ ~1 ~ block
			event.world.setBlockState(<blockstate:minecraft:air>, event.position.getOffset(IFacing.up, 1));
			Commands.call("particle endRod " + event.x + " " + (event.y - 0.8) + " " + event.z + " 0.1 0.1 0.1 0.08 3 normal @a", event.player, event.world);
		}
	}

});
