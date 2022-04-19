
#modloaded charset
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

RecipeUtils.tweakRecipe(true, <charset:logic_wire_n> * 4,
   [[null              , <ore:dustRedstone>, null               ],
    [<ore:dustRedstone>, <ore:dustCopper>  , <ore:dustRedstone> ],
    [null              , <ore:dustRedstone>, null               ]]);
