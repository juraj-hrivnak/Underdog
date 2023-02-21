
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
import crafttweaker.item.IMutableItemStack;
import mods.zenutils.Catenation;
import mods.contenttweaker.Commands;


val mill as bool[] = [false];

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

	// Flint placing
	if (!isNull(event.item) && <minecraft:flint>.name == event.item.name
		&& event.blockState != <blockstate:contenttweaker:splitting_wedge_flint>
		&& event.blockState != <blockstate:pyrotech:anvil_granite:damage=0>
		&& event.blockState != <blockstate:pyrotech:anvil_granite:damage=1>
		&& event.blockState != <blockstate:pyrotech:anvil_granite:damage=2>
		&& event.blockState != <blockstate:pyrotech:anvil_granite:damage=3>
		&& event.blockState != <blockstate:pyrotech:anvil_iron_plated:damage=0>
		&& event.blockState != <blockstate:pyrotech:anvil_iron_plated:damage=1>
		&& event.blockState != <blockstate:pyrotech:anvil_iron_plated:damage=2>
		&& event.blockState != <blockstate:pyrotech:anvil_iron_plated:damage=3>) {

		if (event.world.getBlockState(event.position.getOffset(IFacing.up, 1)) == <blockstate:minecraft:air>) {
			event.item.mutable().shrink(1);
			event.world.setBlockState(<blockstate:contenttweaker:splitting_wedge_flint>, event.position.getOffset(IFacing.up, 1));
		}
	}
	// Flint picking up
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
	if (isNull(event.item) && (event.blockState == <blockstate:cuisine:mill:facing=west> || event.blockState == <blockstate:cuisine:mill:facing=north> || event.blockState == <blockstate:cuisine:mill:facing=east> || event.blockState == <blockstate:cuisine:mill:facing=south>)) {
		if (mill[0] == false) {
            event.player.world.catenation()
                .sleep(64)
                .run(function(world, context) {
                    return mill[0] = false;
                })
                .stopWhen(function(world, context) {
                    return !event.player.alive;
                })
                .start();

			Commands.call("playsound hand_mill block @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);
			event.player.foodStats.addStats(1, 0.5f); // Fix draining too much hunger
		}
		mill[0] = true;
	}


	// Lever
	val levers as bool[IBlockState] = {
		<blockstate:minecraft:lever:facing=up_x,powered=true> 		: true	,
		<blockstate:minecraft:lever:facing=up_z,powered=true> 		: true	,
		<blockstate:minecraft:lever:facing=down_x,powered=true> 	: true	,
		<blockstate:minecraft:lever:facing=down_z,powered=true> 	: true	,
		<blockstate:minecraft:lever:facing=west,powered=true> 		: true	,
		<blockstate:minecraft:lever:facing=north,powered=true> 		: true	,
		<blockstate:minecraft:lever:facing=east,powered=true> 		: true	,
		<blockstate:minecraft:lever:facing=south,powered=true> 		: true	,

		<blockstate:minecraft:lever:facing=up_x,powered=false> 		: false	,
		<blockstate:minecraft:lever:facing=up_z,powered=false> 		: false	,
		<blockstate:minecraft:lever:facing=down_x,powered=false> 	: false	,
		<blockstate:minecraft:lever:facing=down_z,powered=false> 	: false	,
		<blockstate:minecraft:lever:facing=west,powered=false> 		: false	,
		<blockstate:minecraft:lever:facing=north,powered=false> 	: false	,
		<blockstate:minecraft:lever:facing=east,powered=false> 		: false	,
		<blockstate:minecraft:lever:facing=south,powered=false> 	: false
	};
	if (levers.keySet has event.blockState) {
		if (levers[event.blockState] == true) {
			Commands.call("playsound breaker_off block @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);
		} else {
			Commands.call("playsound breaker_on block @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);
		}
	}


	// Berry Bush
	if (event.blockState == <blockstate:biomesoplenty:plant_0:variant=berrybush>) {
		event.world.setBlockState(<blockstate:biomesoplenty:plant_0:variant=bush>, event.position);
		event.player.give(<biomesoplenty:berries>);
	}


    // print("+-----------------------------------------------------------------+");
    // print("| -------------------  LOADED OSV BLOCKS  ----------------------- |");
    // var array as string[] = [];
    // for i in loadedMods["osv"].items {
    //     if (!(array has i.definition.id)) {
    //         print(i.definition.id + ":*");
    //     }
    //     array += i.definition.id;
    // }
    // print("| -------------------  +-+-+-+-+-+-+-+-+  ----------------------- |");
    // print("+-----------------------------------------------------------------+");

	// if (event.blockState.block.definition.unlocalizedName == <blockstate:pyrotech:chopping_block>.block.definition.unlocalizedName) {
    //     val block = event.world.getBlock(event.x, event.y, event.z);

    //     if (block.data.stackHandler.Items[0].id == "minecraft:log" && <ore:toolAxe> has event.item) {
    //         val pos = crafttweaker.util.Position3f.create(event.x, event.y, event.z).asBlockPos();
    //         val data = block.data.update({
    //             stackHandler: {
    //                 Size: 1,
    //                 Items: [{
    //                     Slot: 0,
    //                     id: "contenttweaker:chopped_oak_wood",
    //                     Count: 1 as byte,
    //                     Damage: 0 as short
    //                 }]
    //             }
    //         });
    //         event.world.setBlockState(event.blockState, data, pos);
    //     }
	// }

	// // Secret
	// Commands.call("playsound custom.secret master @a[r=16] " + event.x + " " + event.y + " " + event.z, event.player, event.world);
});
