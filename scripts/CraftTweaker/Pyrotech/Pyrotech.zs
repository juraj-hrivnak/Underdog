#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.dropt.Dropt;

import mods.pyrotech.BrickCrucible;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.PitKiln;

// Worktable removal
rh(<pyrotech:worktable_stone>);
rh(<pyrotech:worktable>);
hc("pyrotech.worktable");

val itemsToRemove as IItemStack[] = [
    <pyrotech:fossil_ore>,
    <pyrotech:dense_coal_ore>,
    <pyrotech:dense_nether_coal_ore>,
    <pyrotech:rock_netherrack>,
    <pyrotech:living_tar>,
    <pyrotech:material:32>,
    <pyrotech:rock>,
    <pyrotech:rock:1>,
    <pyrotech:rock:2>,
    <pyrotech:rock:3>,
    <pyrotech:rock:6>,
    <pyrotech:rock:8>,
    <pyrotech:rock:10>,
    <pyrotech:limestone>,
    <pyrotech:material:28>,
    // Cobblestones
    <pyrotech:cobblestone>,
    <pyrotech:cobblestone:1>,
    <pyrotech:cobblestone:2>,
    <pyrotech:cobblestone:3>,
];

for i in itemsToRemove { furnace.remove(i); rh(i); }
rh(<pyrotech:crude_hammer>);

recipes.remove(<pyrotech:cog_stone>);
recipes.addShaped(<pyrotech:cog_stone>,
   [[<ore:rocks>, <ore:rocks>, <ore:rocks>],
    [<ore:rocks>, <ore:stickStone>, <ore:rocks>],
    [<ore:rocks>, <ore:rocks>, <ore:rocks>]]);

recipes.remove(<pyrotech:sawmill_blade_stone>);
recipes.addShaped(<pyrotech:sawmill_blade_stone>,
   [[<ore:rocks>, <ore:rocks>, <ore:rocks>],
    [<ore:rocks>, <ore:stone>, <ore:rocks>],
    [<ore:rocks>, <ore:rocks>, <ore:rocks>]]);

recipes.remove(<pyrotech:flint_and_tinder>);
recipes.addShapeless(<pyrotech:flint_and_tinder>, [<pyrotech:material:10>, <pyrotech:material:13>, <divergentunderground:rock_stone>]);

furnace.remove(<pyrotech:material:22>);

furnace.remove(<minecraft:stone:5>, <pyrotech:cobblestone>);
furnace.remove(<minecraft:stone:3>, <pyrotech:cobblestone:1>);
furnace.remove(<minecraft:stone:1>, <pyrotech:cobblestone:2>);

val clayLump = <pyrotech:material:17>;

val slabsFix as IItemStack[IItemStack] = {
    <minecraft:stone_slab:1>  : <minecraft:sandstone>,
    <minecraft:stone_slab:3>  : <minecraft:cobblestone>,
    <minecraft:stone_slab:4>  : <minecraft:brick_block>,
    <minecraft:stone_slab:5>  : <minecraft:stonebrick>,
    <minecraft:stone_slab:6>  : <minecraft:nether_brick>,
    <minecraft:stone_slab:7>  : <minecraft:quartz_block>,
    <minecraft:wooden_slab>   : <minecraft:planks>,
    <minecraft:wooden_slab:1> : <minecraft:planks:1>,
    <minecraft:wooden_slab:2> : <minecraft:planks:2>,
    <minecraft:wooden_slab:3> : <minecraft:planks:3>,
    <minecraft:wooden_slab:4> : <minecraft:planks:4>,
    <minecraft:wooden_slab:5> : <minecraft:planks:5>,
    <minecraft:stone_slab2>   : <minecraft:red_sandstone>,
    <minecraft:purpur_slab>   : <minecraft:purpur_block>
};

for output, input in slabsFix {
    recipes.addShaped(output * 6, [[input, input, input]]);
}

// Torch
val coal = <minecraft:coal> | <minecraft:coal:1> | <geolosys:coal:1> | <geolosys:coal:2> | <geolosys:coal:3> | <pyrotech:material:21>;

rh(<pyrotech:torch_stone>);
recipes.remove(<pyrotech:torch_fiber>);
recipes.addShaped(<pyrotech:torch_fiber>, [[coal], [<ore:stickWood>]]);
<ore:torch>.add(<pyrotech:torch_fiber>);

Dropt.list("torch")
  .add(Dropt.rule()
      .matchBlocks(["pyrotech:torch_fiber:*"])
      .addDrop(Dropt.drop()
        .force()
        .items([<minecraft:stick>]) // 100% Sticks
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(50))
        .items([<pyrotech:material:21>]) // 50% drop coal pieces
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(50)) // drop nothing else 50% of time
      )
  );

// Milk compat
<ore:listAllmilk>.add(<pyrotech:bucket_clay:1>);
<ore:listAllmilk>.add(<pyrotech:bucket_wood:1>);
<ore:listAllmilk>.add(<pyrotech:bucket_stone:1>);

// Wood Pile
recipes.remove(<pyrotech:log_pile>);
recipes.addShaped(<pyrotech:log_pile>,
   [[<ore:firewood>, <ore:firewood>, <ore:firewood>],
    [<ore:firewood>, <ore:firewood>, <ore:firewood>],
    [<ore:firewood>, <ore:firewood>, <ore:firewood>]]);
furnace.setFuel(<pyrotech:log_pile>  , 1080);

// Masonry Brick
recipes.addShaped(<pyrotech:material:16>,
   [[null       , clayLump    ],
    [<ore:rocks>, <ore:rocks> ]]);

// Stone Hammer
recipes.remove(<pyrotech:stone_hammer>);
recipes.addShaped(<pyrotech:stone_hammer>, [
    [<ore:rocks>    , <ore:rocks>         ],
    [<ore:stickWood>, <ore:rocks>.reuse() ]
]);