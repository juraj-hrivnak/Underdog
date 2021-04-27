#modloaded rustic
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Barley Crushing Tub recipe
mods.rustic.CrushingTub.addRecipe(<liquid:edible_oil> * 10, <harvestcraft:barleyitem> * 2, <biomesoplenty:plant_1:11>);

<rustic:crushing_tub>.addTooltip("§aUsed for crushing stuff by feet");