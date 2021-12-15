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


val refracLump  = <pyrotech:material:35>;
val refracBrick = <pyrotech:material:5>;
val refracBlock = <pyrotech:refractory_brick_block>;

// Refractory
recipes.remove(<pyrotech:brick_kiln>);
recipes.remove(<pyrotech:brick_oven>);
recipes.remove(<pyrotech:brick_sawmill>);
recipes.remove(<pyrotech:brick_crucible>);
recipes.remove(<pyrotech:bloomery>);

// Kiln
recipes.addShaped(<pyrotech:brick_kiln>,
   [[refracBrick, refracLump  , refracBrick ],
    [refracLump , null        , refracLump  ],
    [refracBrick, refracBlock , refracBrick ]]);
// Oven
recipes.addShaped(<pyrotech:brick_oven>,
   [[refracBrick, refracBrick , refracBrick ],
    [refracLump , null        , refracLump  ],
    [refracBrick, refracBlock , refracBrick ]]);
// Sawmill
recipes.addShaped(<pyrotech:brick_sawmill>,
   [[refracBrick, null        , refracBrick ],
    [refracLump , null        , refracLump  ],
    [refracBrick, refracBlock , refracBrick ]]);
// Crucible
recipes.addShaped(<pyrotech:brick_crucible>,
   [[refracBrick, null        , refracBrick ],
    [refracLump , refracLump  , refracLump  ],
    [refracBrick, refracBlock , refracBrick ]]);
// Bloomery
recipes.addShaped(<pyrotech:bloomery>,
   [[refracBrick, null        , refracBrick ],
    [refracBrick, null        , refracBrick ],
    [refracBrick, refracBlock , refracBrick ]]);


val masonryBrick = <pyrotech:material:16>;
val masonryBlock = <pyrotech:stone_bricks>;

// Stone
recipes.remove(<pyrotech:stone_kiln>);
recipes.remove(<pyrotech:stone_oven>);
recipes.remove(<pyrotech:stone_sawmill>);
recipes.remove(<pyrotech:stone_crucible>);

// Kiln
recipes.addShaped(<pyrotech:stone_kiln>,
   [[masonryBrick , clayLump    , masonryBrick  ],
    [clayLump     , null        , clayLump      ],
    [masonryBrick , masonryBlock, masonryBrick  ]]);
// Oven
recipes.addShaped(<pyrotech:stone_oven>,
   [[masonryBrick , masonryBrick  , masonryBrick],
    [clayLump     , null        , clayLump      ],
    [masonryBrick , masonryBlock, masonryBrick  ]]);
// Sawmill
recipes.addShaped(<pyrotech:stone_sawmill>,
   [[masonryBrick , null        , masonryBrick  ],
    [clayLump     , null        , clayLump      ],
    [masonryBrick , masonryBlock, masonryBrick  ]]);
// Crucible
recipes.addShaped(<pyrotech:stone_crucible>,
   [[masonryBrick , null        , masonryBrick  ],
    [clayLump     , clayLump    , clayLump      ],
    [masonryBrick , masonryBlock, masonryBrick  ]]);


// Soaking Pot
recipes.remove(<pyrotech:soaking_pot>);
recipes.addShaped(<pyrotech:soaking_pot>,
   [[<ore:lumber> , masonryBrick, <ore:lumber>  ],
    [masonryBrick , clayLump    , masonryBrick  ],
    [<ore:lumber> , masonryBrick, <ore:lumber>  ]]);

// Bellows
recipes.remove(<pyrotech:bellows>);
recipes.addShaped(<pyrotech:bellows>,
   [[<ore:lumber> , masonryBrick    , <ore:lumber>  ],
    [<ore:leather>, <ore:leather>   , <ore:leather> ],
    [masonryBrick , masonryBrick    , masonryBrick  ]]);


val boatFix as IItemStack[IItemStack] = {
    <minecraft:boat>            : <contenttweaker:lumber_vanilla_oak>     ,
    <minecraft:spruce_boat>     : <contenttweaker:lumber_vanilla_spruce>  ,
    <minecraft:birch_boat>      : <contenttweaker:lumber_vanilla_birch>   ,
    <minecraft:jungle_boat>     : <contenttweaker:lumber_vanilla_jungle>  ,
    <minecraft:acacia_boat>     : <contenttweaker:lumber_vanilla_acacia>  ,
    <minecraft:dark_oak_boat>   : <contenttweaker:lumber_vanilla_dark_oak>
};

for output, input in boatFix {
    recipes.remove(output);
    recipes.addShaped(output * 6,
       [[input, null, input],
        [input, input, input]]);
}


recipes.remove(<pyrotech:shelf_stone>);
recipes.remove(<pyrotech:stash_stone>);
recipes.remove(<pyrotech:crate_stone>);
recipes.remove(<pyrotech:mechanical_hopper>);
recipes.remove(<pyrotech:mechanical_bellows>);
recipes.remove(<pyrotech:mechanical_compacting_bin>);
recipes.remove(<pyrotech:mechanical_mulch_spreader>);

val treatLumber = <contenttweaker:treated_wood_lumber>;

// Durable Shelf
recipes.addShaped(<pyrotech:shelf_stone>,
   [[masonryBrick , treatLumber     , masonryBrick  ],
    [treatLumber  , <pyrotech:shelf>, treatLumber   ],
    [masonryBrick , treatLumber     , masonryBrick  ]]);

// Durable Stash
recipes.addShaped(<pyrotech:stash_stone>,
   [[masonryBrick , treatLumber     , masonryBrick  ],
    [treatLumber  , <pyrotech:stash>, treatLumber   ],
    [masonryBrick , treatLumber     , masonryBrick  ]]);

// Durable Crate
recipes.addShaped(<pyrotech:crate_stone>,
   [[masonryBrick , treatLumber     , masonryBrick  ],
    [treatLumber  , <pyrotech:crate>, treatLumber   ],
    [masonryBrick , treatLumber     , masonryBrick  ]]);

// Mechanical Hopper
recipes.addShaped(<pyrotech:mechanical_hopper>,
   [[masonryBrick , null            , masonryBrick  ],
    [treatLumber  , <ore:rodStone>  , treatLumber   ],
    [null         , masonryBrick     , null         ]]);

// Mechanical Bellows
recipes.addShaped(<pyrotech:mechanical_bellows>,
   [[treatLumber    , <minecraft:piston>, treatLumber   ],
    [<ore:rodStone> , <pyrotech:bellows>, <ore:rodStone>],
    [treatLumber    , null              , treatLumber   ]]);

// Mechanical Compacting Bin
recipes.addShaped(<pyrotech:mechanical_compacting_bin>,
   [[masonryBrick                   , treatLumber   , masonryBrick      ],
    [<pyrotech:mechanical_hopper>   , null          , <minecraft:piston>],
    [masonryBrick                   , treatLumber   , masonryBrick      ]]);

// Mechanical Mulch Spreader
recipes.addShaped(<pyrotech:mechanical_mulch_spreader>,
   [[masonryBrick                   , treatLumber   , masonryBrick                  ],
    [<pyrotech:mechanical_hopper>   , null          , <pyrotech:mechanical_hopper>  ],
    [masonryBrick                   , treatLumber   , masonryBrick                  ]]);
