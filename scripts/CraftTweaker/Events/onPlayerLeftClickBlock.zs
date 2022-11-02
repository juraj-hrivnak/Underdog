
#loader crafttweaker reloadable

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.server.IServer;
import crafttweaker.world.IFacing;
import mods.contenttweaker.Commands;


events.onPlayerLeftClickBlock(function(event as crafttweaker.event.PlayerLeftClickBlockEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

	val blockTrasformers as IBlockState[IBlockState] = {

		// Vanilla
		<blockstate:minecraft:log:axis=y,variant=oak>				: <blockstate:contenttweaker:chopped_oak_wood>			,
		<blockstate:minecraft:log:axis=y,variant=spruce>			: <blockstate:contenttweaker:chopped_spruce_wood>		,
		<blockstate:minecraft:log:axis=y,variant=birch>				: <blockstate:contenttweaker:chopped_birch_wood>		,
		<blockstate:minecraft:log:axis=y,variant=jungle>			: <blockstate:contenttweaker:chopped_jungle_wood>		,
		<blockstate:minecraft:log2:axis=y,variant=dark_oak>			: <blockstate:contenttweaker:chopped_dark_oak_wood>		,
		<blockstate:minecraft:log2:axis=y,variant=acacia>			: <blockstate:contenttweaker:chopped_acacia_wood>		,

		// Biomes O Plenty
		<blockstate:biomesoplenty:log_0:axis=y,variant=sacred_oak>	: <blockstate:contenttweaker:chopped_sacred_oak_wood>	,
		<blockstate:biomesoplenty:log_0:axis=y,variant=cherry>		: <blockstate:contenttweaker:chopped_cherry_wood>		,
		<blockstate:biomesoplenty:log_0:axis=y,variant=umbran>		: <blockstate:contenttweaker:chopped_umbran_wood>		,
		<blockstate:biomesoplenty:log_0:axis=y,variant=fir>			: <blockstate:contenttweaker:chopped_fir_wood>			,
		<blockstate:biomesoplenty:log_1:axis=y,variant=ethereal>	: <blockstate:contenttweaker:chopped_ethereal_wood>		,
		<blockstate:biomesoplenty:log_1:axis=y,variant=magic>		: <blockstate:contenttweaker:chopped_magic_wood>		,
		<blockstate:biomesoplenty:log_1:axis=y,variant=mangrove>	: <blockstate:contenttweaker:chopped_mangrove_wood>		,
		<blockstate:biomesoplenty:log_1:axis=y,variant=palm>		: <blockstate:contenttweaker:chopped_palm_wood>			,
		<blockstate:biomesoplenty:log_2:axis=y,variant=redwood>		: <blockstate:contenttweaker:chopped_redwood_wood>		,
		<blockstate:biomesoplenty:log_2:axis=y,variant=willow>		: <blockstate:contenttweaker:chopped_willow_wood>		,
		<blockstate:biomesoplenty:log_2:axis=y,variant=pine>		: <blockstate:contenttweaker:chopped_pine_wood>			,
		<blockstate:biomesoplenty:log_2:axis=y,variant=hellbark>	: <blockstate:contenttweaker:chopped_hellbark_wood>		,
		<blockstate:biomesoplenty:log_3:axis=y,variant=jacaranda>	: <blockstate:contenttweaker:chopped_jacaranda_wood>	,
		<blockstate:biomesoplenty:log_3:axis=y,variant=mahogany>	: <blockstate:contenttweaker:chopped_mahogany_wood>		,
		<blockstate:biomesoplenty:log_3:axis=y,variant=ebony>		: <blockstate:contenttweaker:chopped_ebony_wood>		,
		<blockstate:biomesoplenty:log_3:axis=y,variant=eucalyptus>	: <blockstate:contenttweaker:chopped_eucalyptus_wood>	,

		// Rustic
		<blockstate:rustic:log:axis=y,variant=olive>				: <blockstate:contenttweaker:chopped_rustic_olive>		,
		<blockstate:rustic:log:axis=y,variant=ironwood>				: <blockstate:contenttweaker:chopped_rustic_ironwood>	,

		// Forestry
		<blockstate:forestry:logs.0:axis=y,variant=larch>			: <blockstate:contenttweaker:chopped.larch>				,
		<blockstate:forestry:logs.0:axis=y,variant=teak>			: <blockstate:contenttweaker:chopped.teak>				,
		<blockstate:forestry:logs.0:axis=y,variant=acacia>			: <blockstate:contenttweaker:chopped.acacia>			,
		<blockstate:forestry:logs.0:axis=y,variant=lime>			: <blockstate:contenttweaker:chopped.lime>				,
		<blockstate:forestry:logs.1:axis=y,variant=chestnut>		: <blockstate:contenttweaker:chopped.chestnut>			,
		<blockstate:forestry:logs.1:axis=y,variant=wenge>			: <blockstate:contenttweaker:chopped.wenge>				,
		<blockstate:forestry:logs.1:axis=y,variant=baobab>			: <blockstate:contenttweaker:chopped.baobab>			,
		<blockstate:forestry:logs.1:axis=y,variant=sequoia>			: <blockstate:contenttweaker:chopped.sequoia>			,
		<blockstate:forestry:logs.2:axis=y,variant=kapok>			: <blockstate:contenttweaker:chopped.kapok>				,
		<blockstate:forestry:logs.2:axis=y,variant=ebony>			: <blockstate:contenttweaker:chopped.ebony>				,
		<blockstate:forestry:logs.2:axis=y,variant=mahogany>		: <blockstate:contenttweaker:chopped.mahogany>			,
		<blockstate:forestry:logs.2:axis=y,variant=balsa>			: <blockstate:contenttweaker:chopped.balsa>				,
		<blockstate:forestry:logs.3:axis=y,variant=willow>			: <blockstate:contenttweaker:chopped.willow>			,
		<blockstate:forestry:logs.3:axis=y,variant=walnut>			: <blockstate:contenttweaker:chopped.walnut>			,
		<blockstate:forestry:logs.3:axis=y,variant=greenheart>		: <blockstate:contenttweaker:chopped.greenheart>		,
		<blockstate:forestry:logs.3:axis=y,variant=cherry>			: <blockstate:contenttweaker:chopped.cherry>			,
		<blockstate:forestry:logs.4:axis=y,variant=mahoe>			: <blockstate:contenttweaker:chopped.mahoe>				,
		<blockstate:forestry:logs.4:axis=y,variant=poplar>			: <blockstate:contenttweaker:chopped.poplar>			,
		<blockstate:forestry:logs.4:axis=y,variant=palm>			: <blockstate:contenttweaker:chopped.palm>				,
		<blockstate:forestry:logs.4:axis=y,variant=papaya>			: <blockstate:contenttweaker:chopped.papaya>			,
		<blockstate:forestry:logs.5:axis=y,variant=pine>			: <blockstate:contenttweaker:chopped.pine>				,
		<blockstate:forestry:logs.5:axis=y,variant=plum>			: <blockstate:contenttweaker:chopped.plum>				,
		<blockstate:forestry:logs.5:axis=y,variant=maple>			: <blockstate:contenttweaker:chopped.maple>				,
		<blockstate:forestry:logs.5:axis=y,variant=citrus>			: <blockstate:contenttweaker:chopped.citrus>			,
		<blockstate:forestry:logs.6:axis=y,variant=giganteum>		: <blockstate:contenttweaker:chopped.giganteum>			,
		<blockstate:forestry:logs.6:axis=y,variant=ipe>				: <blockstate:contenttweaker:chopped.ipe>				,
		<blockstate:forestry:logs.6:axis=y,variant=padauk>			: <blockstate:contenttweaker:chopped.padauk>			,
		<blockstate:forestry:logs.6:axis=y,variant=cocobolo>		: <blockstate:contenttweaker:chopped.cocobolo>			,
		<blockstate:forestry:logs.7:axis=y,variant=zebrawood>		: <blockstate:contenttweaker:chopped.zebrawood>			,

		// Cuisine
		<blockstate:cuisine:log:axis=y>								: <blockstate:contenttweaker:chopped_cuisine_citrus>	,
	};

	if (!isNull(event.item) && <ore:toolHammer> has event.item) {

		// Checking for the ~ ~ ~ block
		if (event.blockState == <blockstate:contenttweaker:splitting_wedge>) {

			event.damageItem(1);
			event.player.setCooldown(event.player.currentItem, 10);

			// Replacing the ~ ~ ~ block
			event.world.setBlockState(<blockstate:contenttweaker:splitting_wedge_hammered>, event.position);

			// Checking for the ~ ~-1 ~ block
			if (blockTrasformers has event.world.getBlockState(event.position.getOffset(IFacing.down, 1))) {
				event.damageItem(1);
				event.cancel();

				// Replacing the ~ ~-1 ~ block
				event.world.setBlockState(blockTrasformers[event.world.getBlockState(event.position.getOffset(IFacing.down, 1))], event.position.getOffset(IFacing.down, 1));
				Commands.call("playsound tconstruct:wood_hit block @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);

			} else {

				// Destroy the ~ ~ ~ block
				event.world.destroyBlock(event.position, true);

			}
		}

		// Checking for the ~ ~ ~ block
		if (event.blockState == <blockstate:contenttweaker:splitting_wedge_flint>) {

			event.player.give(<pyrotech:material:10>);
			event.damageItem(1);
			event.player.setCooldown(event.player.currentItem, 10);

			// Replacing the ~ ~ ~ block
			event.world.setBlockState(<blockstate:minecraft:air>, event.position);

			// Checking for the ~ ~-1 ~ block
			if (blockTrasformers has event.world.getBlockState(event.position.getOffset(IFacing.down, 1))) {
				event.damageItem(1);
				event.cancel();

				// Replacing the ~ ~-1 ~ block
				event.world.setBlockState(blockTrasformers[event.world.getBlockState(event.position.getOffset(IFacing.down, 1))], event.position.getOffset(IFacing.down, 1));
				Commands.call("playsound tconstruct:wood_hit block @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);

			} else {

				// Destroy the ~ ~ ~ block
				event.world.destroyBlock(event.position, true);

			}
		}

	}
});
