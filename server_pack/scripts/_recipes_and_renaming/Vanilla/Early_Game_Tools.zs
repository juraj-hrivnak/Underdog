import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

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