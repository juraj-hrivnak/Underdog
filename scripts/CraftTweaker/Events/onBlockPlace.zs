
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;


events.onBlockPlace(function(event as crafttweaker.event.BlockPlaceEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

	val blockPlaceTransforms as IBlockState[IBlockState] = {
		<blockstate:pyrotech:torch_fiber:facing=up,type=unlit>      : <blockstate:pyrotech:torch_fiber:facing=up,type=lit>,
		<blockstate:pyrotech:torch_fiber:facing=north,type=unlit>   : <blockstate:pyrotech:torch_fiber:facing=north,type=lit>,
		<blockstate:pyrotech:torch_fiber:facing=east,type=unlit>    : <blockstate:pyrotech:torch_fiber:facing=east,type=lit>,
		<blockstate:pyrotech:torch_fiber:facing=south,type=unlit>   : <blockstate:pyrotech:torch_fiber:facing=south,type=lit>,
		<blockstate:pyrotech:torch_fiber:facing=west,type=unlit>    : <blockstate:pyrotech:torch_fiber:facing=west,type=lit>
	} as IBlockState[IBlockState];

	// Checking block
	if (blockPlaceTransforms.keySet has event.blockState) {
		event.world.setBlockState(blockPlaceTransforms[event.blockState], event.position);
	}

});
