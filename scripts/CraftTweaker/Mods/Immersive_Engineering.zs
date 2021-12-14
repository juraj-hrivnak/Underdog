
#modloaded immersiveengineering
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hide as h;

// // Treated Wood Crate
// recipes.removeShaped(<immersiveengineering:wooden_device0>);
// recipes.addShapedMirrored(<immersiveengineering:wooden_device0>, [
//     [<ore:plankTreatedWood>, <ore:plateIron>]
// ]);

// // Reinforced Wood Crate
// recipes.removeShaped(<immersiveengineering:wooden_device0:5>);
// recipes.addShaped(<immersiveengineering:wooden_device0:5>, [
//     [null, <ore:plateIron>, null],
//     [<ore:stickIron>, <immersiveengineering:wooden_device0>, <ore:stickIron>],
//     [null, <ore:plateIron>, null]
// ]);

val clayLump = <pyrotech:material:17>;

// Connectors
recipes.addShaped(<contenttweaker:unfired_lv_connector> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump      ],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball>]]);

recipes.addShaped(<contenttweaker:unfired_mv_connector> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump      ],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball>],
    [clayLump       , <ore:ingotCopper> , clayLump      ]]);

recipes.addShaped(<contenttweaker:unfired_hv_connector> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump      ],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball>],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball>]]);
recipes.remove(<immersiveengineering:connector>);
recipes.remove(<immersiveengineering:connector:2>);
recipes.remove(<immersiveengineering:connector:4>);

// Relays
recipes.addShaped(<contenttweaker:unfired_lv_relay> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump      ],
    [clayLump       , <ore:clayball>    , clayLump      ]]);

recipes.addShaped(<contenttweaker:unfired_mv_relay> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump      ],
    [<ore:clayball> , clayLump          , <ore:clayball>],
    [clayLump       , <ore:clayball>    , clayLump      ]]);
recipes.remove(<immersiveengineering:connector:1>);
recipes.remove(<immersiveengineering:connector:3>);

// Blast Bricks
rh(<immersiveengineering:stone_decoration:1>);
rh(<immersiveengineering:stone_decoration_slab:1>);

// Improved Blast Bricks
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped(<immersiveengineering:stone_decoration:2>,
   [[<ore:plateIron>                    ],
    [<pyrotech:refractory_brick_block>  ]]);

h(<immersiveengineering:material:7>);

// Concrete
recipes.remove(<immersiveengineering:stone_decoration:5>);
recipes.addShaped(<immersiveengineering:stone_decoration:5> * 12,
   [[<ore:slag>     , <ore:clay>        , <ore:slag>    ],
    [<ore:gravel>   , <ore:listAllwater>, <ore:gravel>  ],
    [<ore:slag>     , <ore:clay>        , <ore:slag>    ]]);


// /////////////////////////////////////
// //////////// Metal Press ////////////

// val molds = {
//     plate : <immersiveengineering:mold>,
//     gear : <immersiveengineering:mold:1>,
//     rod : <immersiveengineering:mold:2>,
//     bullet : <immersiveengineering:mold:3>,
//     wire : <immersiveengineering:mold:4>,
//     packing2x2 : <immersiveengineering:mold:5>,
//     packing3x3 : <immersiveengineering:mold:6>,
//     unpacking : <immersiveengineering:mold:7>
// } as IItemStack[string];