
#modloaded dawnoftimebuilder
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val rock = <divergentunderground:rock_stone>;
val dirt = <minecraft:dirt>;
val gravel = <minecraft:gravel>;
val limestoneCobble = <divergentunderground:quark_limestone_cobblestone>;
// val porcelain = <ceramics:unfired_clay:5>;

// Gravel Path
recipes.addShaped(<dawnoftimebuilder:path_gravel> * 6,
   [[gravel, gravel, gravel ],
    [dirt  , dirt  , dirt   ]]);

// Stepping Stone Path
recipes.addShaped(<dawnoftimebuilder:path_stepping_stones> * 6,
   [[gravel, rock, gravel ],
    [dirt  , dirt, dirt   ]]);

// Slabbed Path
recipes.addShaped(<dawnoftimebuilder:path_cobbled> * 6,
   [[rock, rock, rock ],
    [dirt, dirt, dirt ]]);

// Tiles Path
recipes.addShaped(<dawnoftimebuilder:path_ochre_tiles> * 6,
   [[<ore:ingotBrick>, <minecraft:clay_ball>, <ore:ingotBrick>],
    [dirt, dirt, dirt ]]);

// Dirt Path
recipes.addShaped(<dawnoftimebuilder:path_dirt> * 6,
   [[dirt, dirt, dirt ],
    [dirt, dirt, dirt ]]);

val pathSlabsAndPaths as IItemStack[IItemStack] = {
    <dawnoftimebuilder:path_gravel_slab> : <dawnoftimebuilder:path_gravel>,
    <dawnoftimebuilder:path_stepping_stones_slab> : <dawnoftimebuilder:path_stepping_stones>,
    <dawnoftimebuilder:path_cobbled_slab> : <dawnoftimebuilder:path_cobbled>,
    <dawnoftimebuilder:path_ochre_tiles_slab> : <dawnoftimebuilder:path_ochre_tiles>,
    <dawnoftimebuilder:path_dirt_slab> : <dawnoftimebuilder:path_dirt>
};

for pathSlab, path in pathSlabsAndPaths {
    RecipeUtils.tweakRecipe(false, path, [[pathSlab, pathSlab]]);
    RecipeUtils.tweakRecipe(false, pathSlab * 2, [[path]]);
}

// Removing Cobbled Limestone (Is duped)
rh(<dawnoftimebuilder:cobbled_limestone>);

// Limestone Bricks
RecipeUtils.tweakRecipe(true, <dawnoftimebuilder:limestone_brick>,
   RecipeUtils.createFull2(limestoneCobble));

// // Sake Bottle
// RecipeUtils.tweakRecipe(true, (<dawnoftimebuilder:sake_bottle>,
//       [[null, porcelain, null],
//     [porcelain, null, porcelain],
//     [porcelain, porcelain, porcelain]]);

// // Sake Cup
// RecipeUtils.tweakRecipe(true, <dawnoftimebuilder:sake_cup>,
//       [[porcelain, null, porcelain],
//     [null, porcelain, null]]);

// Bamboo Thatch
RecipeUtils.tweakRecipe(true, <dawnoftimebuilder:thatch_bamboo>,
   RecipeUtils.createFull2(<cuisine:bamboo>));

// Mouldy Wheat Thatch
RecipeUtils.tweakRecipe(true, <dawnoftimebuilder:thatch_wheat>,
   RecipeUtils.createFull2(<forestry:mouldy_wheat>));

<dawnoftimebuilder:thatch_wheat>.displayName = game.localize("underdog.displayname.thatch_wheat");
<dawnoftimebuilder:thatch_wheat_stairs>.displayName = game.localize("underdog.displayname.thatch_wheat_stairs");
<dawnoftimebuilder:thatch_wheat_slab>.displayName = game.localize("underdog.displayname.thatch_wheat_slab");

// Bamboo Hat
RecipeUtils.tweakRecipe(true, <dawnoftimebuilder:bamboo_hat>,
   [[<ore:bamboo>, <ore:bamboo>, <ore:bamboo> ],
    [<ore:bamboo>, null        , <ore:bamboo> ]]);
