
#modloaded forestry
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.forestry.Still as Still;
import mods.forestry.Squeezer as Squeezer;

hc("forestry.charcoal.pile");
rh(<forestry:wood_pile>);
rh(<forestry:wood_pile_decorative>);

// Compat for IE Ethanol
Still.removeRecipe(<liquid:bio.ethanol>);
Still.addRecipe(<liquid:ethanol> * 3, <liquid:biomass> * 10, 20);

// Compat for IE Seed Oil
Squeezer.removeRecipe(<liquid:seed.oil>);

for item in <ore:listAllseed>.items {
    Squeezer.addRecipe(<liquid:plantoil> * 10, [item], 20);
}
