
#modloaded immersiveengineering
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.jei.JEI.hide as h;
import mods.immersiveengineering.Fermenter as Fermenter;
import mods.immersiveengineering.Squeezer as Squeezer;

import scripts.CraftTweaker.Vanilla.Water.allWater;
import scripts.CraftTweaker.Utils.RecipeUtils;

// Treated Sticks
recipes.removeShaped(<immersiveengineering:material:0>);
recipes.addShaped("ieTreatedSticks", <immersiveengineering:material:0> * 2, [[<contenttweaker:treated_wood_lumber>], [<contenttweaker:treated_wood_lumber>]]);

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


// Hide Alloy Smelter
hc("ie.alloysmelter");
rh(<immersivepetroleum:schematic>.withTag({multiblock: "IE:AlloySmelter"}, true));
rh(<immersiveengineering:stone_decoration_slab:10>);
rh(<immersiveengineering:stone_decoration:10>);


val clayLump = <pyrotech:material:17>;

// Slag removal
<ore:itemSlag>.remove(<immersiveengineering:material:7>);

// Connectors
recipes.addShaped(<contenttweaker:unfired_lv_connector> * 2,
   [[clayLump      , <ore:ingotCopper>, clayLump       ],
    [<ore:clayball>, <ore:ingotCopper>, <ore:clayball> ]]);

recipes.addShaped(<contenttweaker:unfired_mv_connector> * 2,
   [[clayLump      , <ore:ingotCopper>, clayLump       ],
    [<ore:clayball>, <ore:ingotCopper>, <ore:clayball> ],
    [clayLump      , <ore:ingotCopper>, clayLump       ]]);

recipes.addShaped(<contenttweaker:unfired_hv_connector> * 2,
   [[clayLump       , <ore:ingotCopper> , clayLump       ],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball> ],
    [<ore:clayball> , <ore:ingotCopper> , <ore:clayball> ]]);
recipes.remove(<immersiveengineering:connector>);
recipes.remove(<immersiveengineering:connector:2>);
recipes.remove(<immersiveengineering:connector:4>);

// Relays
recipes.addShaped(<contenttweaker:unfired_lv_relay> * 4,
   [[clayLump, <ore:ingotCopper>, clayLump ],
    [clayLump, <ore:clayball>   , clayLump ]]);

recipes.addShaped(<contenttweaker:unfired_mv_relay> * 4,
   [[clayLump      , <ore:ingotCopper>, clayLump       ],
    [<ore:clayball>, clayLump         , <ore:clayball> ],
    [clayLump      , <ore:clayball>   , clayLump       ]]);
recipes.remove(<immersiveengineering:connector:1>);
recipes.remove(<immersiveengineering:connector:3>);

// Blast Bricks
rh(<immersiveengineering:stone_decoration:1>);
rh(<immersiveengineering:stone_decoration_slab:1>);

// Improved Blast Bricks
RecipeUtils.tweakRecipe(true,<immersiveengineering:stone_decoration:2>,
   [[<ore:plateIron>                   ],
    [<pyrotech:refractory_brick_block> ]]);

h(<immersiveengineering:material:7>);

// Concrete
RecipeUtils.tweakRecipe(true,<immersiveengineering:stone_decoration:5> * 12,
   [[<ore:itemSlag>, <ore:clay>, <ore:itemSlag> ],
    [<ore:gravel>  , allWater  , <ore:gravel>   ],
    [<ore:itemSlag>, <ore:clay>, <ore:itemSlag> ]]);

// Pam's HarvestCraft crops now create ethanol
val ethanol = <liquid:ethanol>;
Fermenter.addRecipe(null, ethanol * 80, <ore:listAllveggie>, 80);
Fermenter.addRecipe(null, ethanol * 80, <ore:listAllfruit>, 80);

// Fix HOP Graphite
Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
Squeezer.addRecipe(<immersiveengineering:material:18>, null, <ore:dustCoke> * 8, 80);

// Seed oil Pam's HarvestCraft compat
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <ore:listAllseed> * 8, 80);
Squeezer.removeByInput(<minecraft:wheat_seeds>);
Squeezer.removeByInput(<minecraft:pumpkin_seeds>);
Squeezer.removeByInput(<minecraft:melon_seeds>);
Squeezer.removeByInput(<minecraft:beetroot_seeds>);
