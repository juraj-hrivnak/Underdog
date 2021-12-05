
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
		
	};
	
	val blockWedgeTrasformers as IBlockState[IBlockState] = {
		<blockstate:contenttweaker:splitting_wedge>	: <blockstate:contenttweaker:splitting_wedge_hammered>
	};


	if (!isNull(event.item) && <ore:toolHammer> has event.item) {

		// Checking for the ~ ~ ~ block
		if (blockWedgeTrasformers.keySet has event.blockState) {
			event.damageItem(1);
			event.player.setCooldown(event.player.currentItem, 10);
			
			// Replacing the ~ ~ ~ block
			event.world.setBlockState(blockWedgeTrasformers[event.blockState], event.position);

			// Checking for the ~ ~-1 ~ block
			if (blockTrasformers has event.world.getBlockState(event.position.getOffset(IFacing.down, 1))) {
				event.damageItem(1);
				event.cancel();

				// Replacing the ~ ~-1 ~ block
				event.world.setBlockState(blockTrasformers[event.world.getBlockState(event.position.getOffset(IFacing.down, 1))], event.position.getOffset(IFacing.down, 1));
				server.commandManager.executeCommand(server, "/playsound tconstruct:wood_hit block @a " + event.x + " " + event.y + " " + event.z);
				server.commandManager.executeCommand(server, "/particle blockcrack " + event.x + " " + event.y + " " + event.z + " 0.2 0 0.2 0 10 normal @a " + event.block.definition.id);
				
			} else {

				// Destroy the ~ ~ ~ block
				event.world.destroyBlock(event.position, true);

			}
		}
	}
});
