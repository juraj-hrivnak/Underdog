
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.jei.JEI.hide as h;
import mods.dropt.Dropt;

import mods.pyrotech.BrickCrucible;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.PitKiln;

import scripts.CraftTweaker.Utils.RecipeUtils;

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

// Refractory Faucet removal
rh(<pyrotech:faucet_brick>);

// Stone Rod removal
h(<pyrotech:material:27>);
<ore:stickStone>.remove(<pyrotech:material:27>);

RecipeUtils.tweakRecipe(true, <pyrotech:sawmill_blade_stone>, RecipeUtils.createSurround(<ore:stones>, <ore:rocks>));

RecipeUtils.tweakRecipe(false, <pyrotech:flint_and_tinder>, [[<pyrotech:material:10>, <pyrotech:material:13>, <ore:rocks>]]);

furnace.remove(<pyrotech:material:22>);

furnace.remove(<minecraft:stone:5>, <pyrotech:cobblestone>);
furnace.remove(<minecraft:stone:3>, <pyrotech:cobblestone:1>);
furnace.remove(<minecraft:stone:1>, <pyrotech:cobblestone:2>);

val clayLump = <pyrotech:material:17>;

// Remove Washed Hide recipes
recipes.remove(<pyrotech:hide_washed>);
recipes.remove(<pyrotech:hide_small_washed>);

// Remove Sapling => Stick recipe
recipes.removeByRecipeName("pyrotech:stick");

// Torch
rh(<pyrotech:torch_stone>);
rh(<pyrotech:torch_fiber>);

// 2x Mulch => 10x Bonemeal
recipes.addShapeless(<minecraft:dye:15> * 16, [<pyrotech:mulch>, <pyrotech:mulch>]);

// 1x Mulch => 8x Bio Fuel
recipes.addShapeless(<mekanism:biofuel> * 8, [<pyrotech:mulch>]);

// Milk compat
<ore:listAllmilk>.add(<pyrotech:bucket_clay:1>);
<ore:listAllmilk>.add(<pyrotech:bucket_wood:1>);
<ore:listAllmilk>.add(<pyrotech:bucket_stone:1>);
<ore:listAllmilk>.add(<pyrotech:bucket_refractory:1>);

// Coal Coke Block
<ore:blockFuelCoke>.add(<pyrotech:coal_coke_block>);

// Wood Pile
RecipeUtils.tweakRecipe(true, <pyrotech:log_pile>, RecipeUtils.createFull3(<ore:firewood>));
furnace.setFuel(<pyrotech:log_pile>, 480);

// Masonry Brick
recipes.addShapedMirrored(<pyrotech:material:16> * 2,
   [[null       , clayLump    ],
    [<ore:rocks>, <ore:rocks> ]]);

// Stone Hammer
RecipeUtils.tweakRecipe(true, <pyrotech:stone_hammer>,
   [[<ore:rocks>    , <ore:rocks>         ],
    [<ore:stickWood>, <ore:rocks>.reuse() ]]);

// Anvil Granite => Stone Anvil
RecipeUtils.tweakRecipe(true, <pyrotech:anvil_granite>,
   [[<minecraft:stone_slab> | <minecraft:stone_slab:3> ],
    [<ore:cobblestone>                                 ]]);

// Flint And Tinder
recipes.addShapeless(<pyrotech:flint_and_tinder>, [<ore:itemRawFlint>, <pyrotech:material:13>, <ore:rocks>]);


// Refractory
val refracLump = <pyrotech:material:35>;
val refracBrick = <pyrotech:material:5>;
val refracBlock = <pyrotech:refractory_brick_block>;

// Kiln
RecipeUtils.tweakRecipe(true, <pyrotech:brick_kiln>,
   [[refracBrick, refracLump , refracBrick ],
    [refracLump , null       , refracLump  ],
    [refracBrick, refracBlock, refracBrick ]]);

// Oven
RecipeUtils.tweakRecipe(true, <pyrotech:brick_oven>,
   [[refracBrick, refracBrick, refracBrick ],
    [refracLump , null       , refracLump  ],
    [refracBrick, refracBlock, refracBrick ]]);

// Sawmill
RecipeUtils.tweakRecipe(true, <pyrotech:brick_sawmill>,
   [[refracBrick, null       , refracBrick ],
    [refracLump , null       , refracLump  ],
    [refracBrick, refracBlock, refracBrick ]]);

// Crucible
RecipeUtils.tweakRecipe(true, <pyrotech:brick_crucible>,
   [[refracBrick, null       , refracBrick ],
    [refracLump , refracLump , refracLump  ],
    [refracBrick, refracBlock, refracBrick ]]);

// Bloomery
RecipeUtils.tweakRecipe(true, <pyrotech:bloomery>,
   [[refracBrick, null       , refracBrick ],
    [refracBrick, null       , refracBrick ],
    [refracBrick, refracBlock, refracBrick ]]);


// Stone
val masonryBrick = <pyrotech:material:16>;
val masonryBlock = <pyrotech:masonry_brick_block>;

// Kiln
RecipeUtils.tweakRecipe(true, <pyrotech:stone_kiln>,
   [[masonryBrick, clayLump    , masonryBrick ],
    [clayLump    , null        , clayLump     ],
    [masonryBrick, masonryBlock, masonryBrick ]]);

// Oven
RecipeUtils.tweakRecipe(true, <pyrotech:stone_oven>,
   [[masonryBrick, masonryBrick, masonryBrick ],
    [clayLump    , null        , clayLump     ],
    [masonryBrick, masonryBlock, masonryBrick ]]);

// Sawmill
RecipeUtils.tweakRecipe(true, <pyrotech:stone_sawmill>,
   [[masonryBrick, null        , masonryBrick ],
    [clayLump    , null        , clayLump     ],
    [masonryBrick, masonryBlock, masonryBrick ]]);

// Crucible
RecipeUtils.tweakRecipe(true, <pyrotech:stone_crucible>,
   [[masonryBrick, null        , masonryBrick ],
    [clayLump    , clayLump    , clayLump     ],
    [masonryBrick, masonryBlock, masonryBrick ]]);


// Soaking Pot
RecipeUtils.tweakRecipe(true, <pyrotech:soaking_pot>,
   [[<ore:lumber>, masonryBrick, <ore:lumber> ],
    [masonryBrick, clayLump    , masonryBrick ],
    [<ore:lumber>, masonryBrick, <ore:lumber> ]]);

// Compacting Bin
RecipeUtils.tweakRecipe(true, <pyrotech:compacting_bin>,
   [[masonryBrick, <ore:lumber>, masonryBrick ],
    [<ore:lumber>, null        , <ore:lumber> ],
    [masonryBrick, <ore:lumber>, masonryBrick ]]);


// Bellows
RecipeUtils.tweakRecipe(true, <pyrotech:bellows>,
   [[<ore:lumber> , masonryBrick , <ore:lumber>  ],
    [<ore:leather>, <ore:leather>, <ore:leather> ],
    [masonryBrick , masonryBrick , masonryBrick  ]]);


val boatFix as IIngredient[IItemStack] = {
    <minecraft:boat>            : <contenttweaker:lumber_vanilla_oak>     ,
    <minecraft:spruce_boat>     : <contenttweaker:lumber_vanilla_spruce>  ,
    <minecraft:birch_boat>      : <contenttweaker:lumber_vanilla_birch>   ,
    <minecraft:jungle_boat>     : <contenttweaker:lumber_vanilla_jungle>  ,
    <minecraft:acacia_boat>     : <contenttweaker:lumber_vanilla_acacia>  ,
    <minecraft:dark_oak_boat>   : <contenttweaker:lumber_vanilla_dark_oak>
};

for output, input in boatFix {
    RecipeUtils.tweakRecipe(true, output,
       [[input, null , input ],
        [input, input, input ]]);
}

val tongsFix as IIngredient[IItemStack] = {
    <pyrotech:tongs_stone>      : <pyrotech:material:16>,
    <pyrotech:tongs_flint>      : <pyrotech:material:10>,
    <pyrotech:tongs_bone>       : <pyrotech:material:11>,
    <pyrotech:tongs_iron>       : <pyrotech:material:19>,
    <pyrotech:tongs_gold>       : <pyrotech:material:34>,
    <pyrotech:tongs_diamond>    : <pyrotech:material:18>,
    <pyrotech:tongs_obsidian>   : <pyrotech:material:33>
};

for output, input in tongsFix {
    RecipeUtils.tweakRecipe(true, output,
       [[null          , input         , null  ],
        [<ore:rodStone>, input         , input ],
        [null          , <ore:rodStone>, null  ]]);
}

val cogFix as IIngredient[IItemStack] = {
    <pyrotech:cog_stone>    : <ore:rocks>           ,
    <pyrotech:cog_flint>    : <pyrotech:material:10>,
    <pyrotech:cog_bone>     : <pyrotech:material:11>
};

for output, input in cogFix {
    RecipeUtils.tweakRecipe(true, output,
       [[input, input         , input ],
        [input, <ore:rodStone>, input ],
        [input, input         , input ]]);
}

val treatLumber = <contenttweaker:treated_wood_lumber>;

// Durable Shelf
RecipeUtils.tweakRecipe(true, <pyrotech:shelf_stone> * 2,
   [[masonryBrick, treatLumber     , masonryBrick ],
    [treatLumber , <pyrotech:shelf>, treatLumber  ],
    [masonryBrick, treatLumber     , masonryBrick ]]);

// Durable Stash
RecipeUtils.tweakRecipe(true, <pyrotech:stash_stone> * 2,
   [[masonryBrick, treatLumber     , masonryBrick ],
    [treatLumber , <pyrotech:stash>, treatLumber  ],
    [masonryBrick, treatLumber     , masonryBrick ]]);

// Durable Crate
RecipeUtils.tweakRecipe(true, <pyrotech:crate_stone> * 2,
   [[masonryBrick, treatLumber     , masonryBrick ],
    [treatLumber , <pyrotech:crate>, treatLumber  ],
    [masonryBrick, treatLumber     , masonryBrick ]]);

// Mechanical Hopper
RecipeUtils.tweakRecipe(true, <pyrotech:mechanical_hopper>,
   [[masonryBrick, null            , masonryBrick ],
    [treatLumber , <ore:rodStone>  , treatLumber  ],
    [null        , masonryBrick     , null        ]]);

// Mechanical Bellows
RecipeUtils.tweakRecipe(true, <pyrotech:mechanical_bellows>,
   [[treatLumber   , <minecraft:piston>, treatLumber    ],
    [<ore:rodStone>, <pyrotech:bellows>, <ore:rodStone> ],
    [treatLumber   , null              , treatLumber    ]]);

// Mechanical Compacting Bin
recipes.remove(<pyrotech:mechanical_compacting_bin>);
recipes.addShapedMirrored(<pyrotech:mechanical_compacting_bin>,
   [[masonryBrick                , treatLumber, masonryBrick       ],
    [<pyrotech:mechanical_hopper>, null       , <minecraft:piston> ],
    [masonryBrick                , treatLumber, masonryBrick       ]]);

// Mechanical Mulch Spreader
RecipeUtils.tweakRecipe(true, <pyrotech:mechanical_mulch_spreader>,
   [[masonryBrick                , treatLumber, masonryBrick                 ],
    [<pyrotech:mechanical_hopper>, null       , <pyrotech:mechanical_hopper> ],
    [masonryBrick                , treatLumber, masonryBrick                 ]]);

// Trip Hammer
RecipeUtils.tweakRecipe(true, <pyrotech:trip_hammer>,
   [[masonryBrick                , treatLumber        , masonryBrick ],
    [<pyrotech:mechanical_hopper>, <pyrotech:cog_iron>, treatLumber  ],
    [masonryBrick                , treatLumber        , masonryBrick ]]);


// Drying Rack
RecipeUtils.tweakRecipe(true, <pyrotech:drying_rack:1>,
   [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood> ],
    [<ore:lumber>   , null           , <ore:lumber>    ],
    [<ore:stickWood>, null           , <ore:stickWood> ]]);

// Composting Bin
RecipeUtils.tweakRecipe(true, <pyrotech:compost_bin>,
   [[<ore:stickWood>, null           , <ore:stickWood> ],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood> ],
    [<ore:lumber>   , null           , <ore:lumber>    ]]);

// Tanning Rack
RecipeUtils.tweakRecipe(true, <pyrotech:tanning_rack>,
   [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood> ],
    [<ore:stickWood>, null           , <ore:stickWood> ],
    [<ore:lumber>   , <ore:stickWood>, <ore:lumber>    ]]);

// Barrel
RecipeUtils.tweakRecipe(true, <pyrotech:barrel>,
   [[<ore:lumber>, null        , <ore:lumber> ],
    [<ore:lumber>, null        , <ore:lumber> ],
    [<ore:lumber>, <ore:lumber>, <ore:lumber> ]]);

// Barrel Lid
RecipeUtils.tweakRecipe(true, <pyrotech:barrel_lid> * 3,
   [[<minecraft:wooden_pressure_plate>, <minecraft:wooden_pressure_plate>, <minecraft:wooden_pressure_plate> ]]);

// Butchers Block
RecipeUtils.tweakRecipe(true, <pyrotech:butchers_block>,
   [[<ore:slabWood>, <ore:slabWood> , <ore:slabWood> ],
    [<ore:lumber>  , null           , <ore:lumber>   ],
    [<ore:lumber>  , <ore:stickWood>, <ore:lumber>   ]]);
