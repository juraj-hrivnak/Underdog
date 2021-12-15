#modloaded dawnoftimebuilder
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val rock = <divergentunderground:rock_stone>;
val dirt = <minecraft:dirt>;
val gravel = <minecraft:gravel>;
val limestoneCobble = <divergentunderground:quark_limestone_cobblestone>;
// val porcelain = <ceramics:unfired_clay:5>;

// Gravel Path
recipes.addShaped(<dawnoftimebuilder:path_gravel> * 6,
    [[gravel, gravel, gravel],
    [dirt, dirt, dirt]]);

// Stepping Stone Path
recipes.addShaped(<dawnoftimebuilder:path_stepping_stones> * 6,
    [[gravel, rock, gravel],
    [dirt, dirt, dirt]]);

// Slabbed Path
recipes.addShaped(<dawnoftimebuilder:path_cobbled> * 6,
    [[rock, rock, rock],
    [dirt, dirt, dirt]]);

// Tiles Path
recipes.addShaped(<dawnoftimebuilder:path_ochre_tiles> * 6,
    [[<ore:ingotBrick>, <minecraft:clay_ball>, <ore:ingotBrick>],
    [dirt, dirt, dirt]]);

// Dirt Path
recipes.addShaped(<dawnoftimebuilder:path_dirt> * 6,
    [[dirt, dirt, dirt],
    [dirt, dirt, dirt]]);

val pathSlabsAndPaths as IItemStack[IItemStack] = {
    <dawnoftimebuilder:path_gravel_slab> : <dawnoftimebuilder:path_gravel>,
    <dawnoftimebuilder:path_stepping_stones_slab> : <dawnoftimebuilder:path_stepping_stones>,
    <dawnoftimebuilder:path_cobbled_slab> : <dawnoftimebuilder:path_cobbled>,
    <dawnoftimebuilder:path_ochre_tiles_slab> : <dawnoftimebuilder:path_ochre_tiles>,
    <dawnoftimebuilder:path_dirt_slab> : <dawnoftimebuilder:path_dirt>
};

for pathSlab, path in pathSlabsAndPaths {
    recipes.remove(path);
    recipes.remove(pathSlab);

    recipes.addShapeless(path, [pathSlab, pathSlab]);
    recipes.addShapeless(pathSlab * 2, [path]);
}

// Removing Cobbled Limestone (Is duped)
rh(<dawnoftimebuilder:cobbled_limestone>);

// Limestone Bricks
recipes.remove(<dawnoftimebuilder:limestone_brick>);
recipes.addShaped(<dawnoftimebuilder:limestone_brick>,
    [[limestoneCobble, limestoneCobble],
    [limestoneCobble, limestoneCobble]]);

// // Sake Bottle
// recipes.remove(<dawnoftimebuilder:sake_bottle>);
// recipes.addShaped(<dawnoftimebuilder:sake_bottle>,
//     [[null, porcelain, null],
//     [porcelain, null, porcelain],
//     [porcelain, porcelain, porcelain]]);

// // Sake Cup
// recipes.remove(<dawnoftimebuilder:sake_cup>);
// recipes.addShaped(<dawnoftimebuilder:sake_cup>,
//     [[porcelain, null, porcelain],
//     [null, porcelain, null]]);

// Bamboo Thatch
recipes.remove(<dawnoftimebuilder:thatch_bamboo>);
recipes.addShaped(<dawnoftimebuilder:thatch_bamboo>,
    [[<cuisine:bamboo>, <cuisine:bamboo>],
    [<cuisine:bamboo>, <cuisine:bamboo>]]);

// Mouldy Wheat Thatch
recipes.remove(<dawnoftimebuilder:thatch_wheat>);
recipes.addShaped(<dawnoftimebuilder:thatch_wheat>,
    [[<forestry:mouldy_wheat>, <forestry:mouldy_wheat>],
    [<forestry:mouldy_wheat>, <forestry:mouldy_wheat>]]);

<dawnoftimebuilder:thatch_wheat>.displayName = "Mouldy Wheat Thatch";
<dawnoftimebuilder:thatch_wheat_stairs>.displayName = "Mouldy Wheat Thatch Stairs";
<dawnoftimebuilder:thatch_wheat_slab>.displayName = "Mouldy Wheat Thatch Slab";

// Bamboo Hat
recipes.remove(<dawnoftimebuilder:bamboo_hat>);
recipes.addShaped(<dawnoftimebuilder:bamboo_hat>,
    [[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>],
    [<ore:bamboo>, null, <ore:bamboo>]]);
