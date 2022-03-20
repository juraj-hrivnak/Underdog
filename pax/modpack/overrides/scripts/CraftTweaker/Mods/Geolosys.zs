
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Prospector's Pick
RecipeUtils.tweakRecipe(true, <geolosys:pro_pick>,
   [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:stickWood>, <ore:ingotIron>],
    [null, <ore:stickWood>, null]]);

// Fields Manual
rh(<geolosys:field_manual>);
