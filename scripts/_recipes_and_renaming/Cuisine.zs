#modloaded cuisine
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

import mods.cuisine.AxeChopping;
import mods.cuisine.Mortar;
import mods.cuisine.Mill;




// Harvestcraft Coconut from dynamictreesphc item
AxeChopping.add(<dynamictreesphc:coconutseed>, <harvestcraft:coconutitem>);
// Tropicraft's Coconut Chunk from harvestcraft's Coconut
AxeChopping.add(<harvestcraft:coconutitem>, <tropicraft:coconut_chunk> * 2);
// Pineapple cubes
AxeChopping.add(<ore:cropPineapple>, <tropicraft:pineapple_cubes>);

/* ------
    Mill  */
Mill.add(<ore:fertilizer>, null, <biomesoplenty:white_dye>, null);
Mill.add(<ore:gemLapis>, null, <biomesoplenty:blue_dye>, null);


/* ----------
    Crafting  */

// Mill
recipes.removeShaped(<cuisine:mill>);
recipes.addShaped(<cuisine:mill>, [
    [<ore:handleWood>],
    [<ore:stone>]
]);

// Fire Pit
recipes.removeShaped(<cuisine:fire_pit>);
recipes.addShapedMirrored(<cuisine:fire_pit>, [
    [<ore:stickWood>, <ore:rocksHard>],
    [<ore:rocksHard>, <ore:rocksHard>]
]);

// Wooden Handle
recipes.removeShaped(<cuisine:material:1>);
recipes.addShapedMirrored(<cuisine:material:1>, [[<ore:stickWood>, <ore:stickWood>]]);