
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
import crafttweaker.item.IMutableItemStack;
import mods.zenutils.DelayManager;
import mods.contenttweaker.Commands;

var mill as bool[] = [false];

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

	val wedge as IBlockState[IBlockState] = {
		<blockstate:contenttweaker:splitting_wedge_hammered> 	: <blockstate:minecraft:air>,
		<blockstate:contenttweaker:splitting_wedge>				: <blockstate:minecraft:air>,
	};
	if (wedge.keySet has event.blockState) {
		event.world.setBlockState(wedge[event.blockState], event.position);
		event.player.give(<contenttweaker:splitting_wedge>);
	}

	if (!isNull(event.item) && <minecraft:flint>.name == event.item.name && event.blockState != <blockstate:contenttweaker:splitting_wedge_flint>) {
		if (event.world.getBlockState(event.position.getOffset(IFacing.up, 1)) == <blockstate:minecraft:air>) {
			event.item.mutable().shrink(1);
			event.world.setBlockState(<blockstate:contenttweaker:splitting_wedge_flint>, event.position.getOffset(IFacing.up, 1));
		}
	}
	if (event.blockState == <blockstate:contenttweaker:splitting_wedge_flint>) {
		event.world.setBlockState(<blockstate:minecraft:air>, event.position);
		event.player.give(<minecraft:flint>);
	}


	// Pick Up Block
	if (event.blockState == <blockstate:crocodilite:quartzite_rock>) {
		if (event.world.getBlockState(event.position.getOffset(IFacing.up, 1)) == <blockstate:contenttweaker:pick_up_block>) {
			// Replacing the ~ ~1 ~ block
			event.world.setBlockState(<blockstate:minecraft:air>, event.position.getOffset(IFacing.up, 1));
			Commands.call("particle endRod " + event.x + " " + (event.y - 0.8) + " " + event.z + " 0.1 0.1 0.1 0.08 3 normal @a", event.player, event.world);
		}
	}


	// Mill
	if isNull(event.item) && (event.blockState == <blockstate:cuisine:mill:facing=west> || event.blockState == <blockstate:cuisine:mill:facing=north> || event.blockState == <blockstate:cuisine:mill:facing=east> || event.blockState == <blockstate:cuisine:mill:facing=south>) {
		if (mill[0] == false) {
			Commands.call("playsound hand_mill block @a[r=20] " + event.x + " " + event.y + " " + event.z, event.player, event.world);
			DelayManager.addDelayWork(function() {
				return mill[0] = false;
			}, 64);
		}
		mill[0] = true;
	}

});
