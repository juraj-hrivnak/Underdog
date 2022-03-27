
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

rh(<minecraft:torch>);
<ore:torch>.remove(<minecraft:torch>);
<ore:blockTorch>.remove(<minecraft:torch>);

recipes.replaceAllOccurences(<minecraft:torch>, <pyrotech:torch_fiber>, <*>);
