import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;

import mods.immersiveengineering.Crusher as crusher;
import mods.immersiveengineering.Excavator as excavator;

// Coal
crusher.removeRecipe(<minecraft:coal>);
crusher.addRecipe(<minecraft:coal> * 4, <ore:oreBlockCoal>, 2048, <thermalfoundation:material:771>, 0.2);
crusher.addRecipe(<minecraft:coal> * 6, <ore:oreBlockCoalDense>, 2048, <thermalfoundation:material:771>, 0.4);

excavator.addMineral("Coal Ore", 50, 0.005, ["oreBlockCoal", "oreBlockCoalDense"], [0.005, 0.01]);