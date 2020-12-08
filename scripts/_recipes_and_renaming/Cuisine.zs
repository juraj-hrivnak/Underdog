import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import mods.cuisine.Mill;
#modloaded cuisine

print("--- loading Cuisine.zs ---");

// Mill Recipes
Mill.add(<ore:fertilizer>, null, <biomesoplenty:white_dye>, null);
Mill.add(<ore:gemLapis>, null, <biomesoplenty:blue_dye>, null);

// Crafting Recipes
#Fire Pit
recipes.removeShaped(<cuisine:fire_pit>);
recipes.addShapedMirrored(<cuisine:fire_pit>, 
    [[<ore:stickWood>,  <ore:rock>],
     [<ore:rock>,       <ore:rock>]]);

#Wooden Handle
recipes.removeShaped(<cuisine:material:1>);
recipes.addShapedMirrored(<cuisine:material:1>, [[<ore:stickWood>, <ore:stickWood>]]);

print("--- Cuisine.zs initialized ---");