import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

var bonemeal = <minecraft:dye:15>;

// Oredicts
<ore:fertilizer>.add(bonemeal);

<ore:dyeWhite>.remove(bonemeal);
<ore:dye>.remove(bonemeal);

//Renaming, Adding Tooltip
bonemeal.displayName = "Nutritional Supplement";
bonemeal.addTooltip("§aActs as Bonemeal");

//Removing Default Bonemeal Recipe
recipes.removeShapeless(bonemeal * 3);
recipes.removeShaped(bonemeal * 1);