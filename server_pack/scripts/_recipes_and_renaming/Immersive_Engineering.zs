#modloaded immersiveengineering
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

import mods.immersiveengineering.MetalPress as metalPress;
import mods.immersiveengineering.BlastFurnace as blastFurnace;
import mods.immersiveengineering.CokeOven as cokeOven;

// Treated Wood Crate
recipes.removeShaped(<immersiveengineering:wooden_device0>);
recipes.addShapedMirrored(<immersiveengineering:wooden_device0>, [
    [<ore:plankTreatedWood>, <ore:plateIron>]
]);

// Reinforced Wood Crate
recipes.removeShaped(<immersiveengineering:wooden_device0:5>);
recipes.addShaped(<immersiveengineering:wooden_device0:5>, [
    [null, <ore:plateIron>, null],
    [<ore:stickIron>, <immersiveengineering:wooden_device0>, <ore:stickIron>],
    [null, <ore:plateIron>, null]
]);

// Steel from Pigiron
recipes.addShapeless("pigiron_smash", <immersiveengineering:metal:8>,
    [ <tconstruct:ingots:4>, <immersiveengineering:tool>.anyDamage().reuse()]);

// Blast Bricks
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [
    [<divergentunderground:rock_granite>, <divergentunderground:rock_granite>],
    [<divergentunderground:rock_quark_limestone>, <divergentunderground:rock_granite>]
]);

// Improved Blast Bricks
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped(<immersiveengineering:stone_decoration:2>, [
    [<immersiveengineering:metal:39>],
    [<immersiveengineering:stone_decoration:1>, <immersiveengineering:metal:39>]
]);




/////////////////////////////////////
//////////// Metal Press ////////////

val molds = {
    plate : <immersiveengineering:mold>,
    gear : <immersiveengineering:mold:1>,
    rod : <immersiveengineering:mold:2>,
    bullet : <immersiveengineering:mold:3>,
    wire : <immersiveengineering:mold:4>,
    packing2x2 : <immersiveengineering:mold:5>,
    packing3x3 : <immersiveengineering:mold:6>,
    unpacking : <immersiveengineering:mold:7>
} as IItemStack[string];

// Charcoal Filter
metalPress.addRecipe(<simpledifficulty:charcoal_filter>, <minecraft:coal:1>, molds.plate, 400, 2);


/////////////////////////////////////
/////////// Blast Furnace ///////////
<immersiveengineering:stone_device:1>.displayName = "";
<immersiveengineering:stone_device:2>.displayName = "Blast Furnace";

// Removing default recipes
blastFurnace.removeRecipe(<immersiveengineering:metal:8>);
blastFurnace.removeRecipe(<immersiveengineering:storage:8>);

// Iron Ore to Pigiron, with slag
blastFurnace.addRecipe(<tconstruct:ingots:4>, <ore:oreIron>, 1600, <immersiveengineering:material:7>);
// Iron Dust to Pigiron, without slag
blastFurnace.addRecipe(<tconstruct:ingots:4>, <ore:dustIron>, 1300);


/////////////////////////////////////
//////////// Coke Oven  /////////////
<immersiveengineering:stone_device>.displayName = "";
<immersivetech:stone_multiblock>.displayName = "Coke Oven";