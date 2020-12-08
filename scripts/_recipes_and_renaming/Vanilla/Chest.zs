import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

print("--- loading Vanilla/Chest.zs ---");

recipes.removeShaped(<minecraft:chest>);
recipes.addShapedMirrored(<minecraft:chest>, [[null, null, null],[<ore:stickIron>, <ore:plankWood>, <ore:plateIron>], [null, null, null]]);
recipes.addShapedMirrored(<minecraft:chest>, [[null, null, null],[<ore:stickSteel>, <ore:plankWood>, <ore:plateSteel>], [null, null, null]]);

print("--- Vanilla/Chest.zs initialized ---");