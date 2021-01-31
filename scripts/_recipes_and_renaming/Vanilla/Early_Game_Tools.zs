import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Pick
// recipes.addShapedMirrored(<minecraft:stone_pickaxe>, [
//     [<ore:rocksHard>, <ore:rocksHard>],
//     [<ore:stickWood>, <ore:rocksHard>.reuse()]
// ]);

// Shovel
recipes.addShaped(<minecraft:stone_shovel>, [
    [null, <ore:rocksHard>],
    [<ore:stickWood>, <ore:rocksHard>.reuse()]
]);

// Axe
recipes.addShaped(<minecraft:stone_axe>, [
    [<ore:rocksHard>, <ore:rocksHard>.reuse()],
    [<ore:stickWood>, null]
]);