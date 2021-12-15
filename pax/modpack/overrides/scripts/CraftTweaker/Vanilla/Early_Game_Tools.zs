
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Shovel
recipes.addShaped(<minecraft:stone_shovel>, [
    [null, <ore:rocks>],
    [<ore:stickWood>, <ore:rocks>.reuse()]
]);

// Axe
recipes.addShaped(<minecraft:stone_axe>, [
    [<ore:rocks>, <ore:rocks>.reuse()],
    [<ore:stickWood>, null]
]);