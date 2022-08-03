
#modloaded nuclearcraft
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import mods.nuclearcraft.AlloyFurnace as alloyFurnace;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Removing Steel
alloyFurnace.removeRecipeWithOutput(<ore:blockSteel>);
alloyFurnace.removeRecipeWithOutput(<ore:ingotSteel>);

// Decay Generator fix
RecipeUtils.tweakRecipe(true, <nuclearcraft:decay_generator>,
   [[<ore:ingotLead>, <ore:rocks>       , <ore:ingotLead> ],
    [<ore:rocks>    , <ore:dustRedstone>, <ore:rocks>     ],
    [<ore:ingotLead>, <ore:rocks>       , <ore:ingotLead> ]]);
