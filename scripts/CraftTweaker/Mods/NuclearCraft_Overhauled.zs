
#modloaded nuclearcraft
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import mods.nuclearcraft.AlloyFurnace as alloyFurnace;

// Removing Steel
alloyFurnace.removeRecipeWithOutput(<ore:blockSteel>);
alloyFurnace.removeRecipeWithOutput(<ore:ingotSteel>);



// Decay Generator fix
recipes.remove(<nuclearcraft:decay_generator>);
recipes.addShaped("decay_generator_fixed", <nuclearcraft:decay_generator>, [
    [<ore:ingotLead>, <ore:rocks>, <ore:ingotLead>],
    [<ore:rocks>, <ore:dustRedstone>, <ore:rocks>],
    [<ore:ingotLead>, <ore:rocks>, <ore:ingotLead>]
]);