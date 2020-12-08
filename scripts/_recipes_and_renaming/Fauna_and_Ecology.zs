import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded faunaandecology

print("--- loading Fauna_and_Ecology.zs ---");

# Bone Shards recipes
recipes.removeShaped(<faunaandecology:shards_bone>);
recipes.removeShaped(<minecraft:dye:15>);

# Bone Marrow
recipes.removeShapeless(<faunaandecology:bone_marrow> * 1, [<minecraft:bone>]);

print("--- Fauna_and_Ecology.zs initialized ---");