
#modloaded cyclicmagic
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Dynamite
RecipeUtils.tweakRecipe(true, <cyclicmagic:ender_tnt_1>,
   [[<minecraft:tnt>      , <minecraft:paper> ],
    [<minecraft:clay_ball>, null              ]]);

// Mining Dynamite
RecipeUtils.tweakRecipe(true, <cyclicmagic:dynamite_mining>,
   [[<minecraft:gunpowder>  , <minecraft:gunpowder>   ],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget> ],
    [<minecraft:paper>      , <minecraft:clay_ball>   ]]);
