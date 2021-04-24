#modloaded nuclearcraft
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Decay Generator fix
recipes.remove(<nuclearcraft:decay_generator>);
recipes.addShaped("decay_generator_fixed", <nuclearcraft:decay_generator>, [
    [<ore:ingotLead>, <ore:rocksHard>, <ore:ingotLead>],
    [<ore:rocksHard>, <ore:dustRedstone>, <ore:rocksHard>],
    [<ore:ingotLead>, <ore:rocksHard>, <ore:ingotLead>]
]);