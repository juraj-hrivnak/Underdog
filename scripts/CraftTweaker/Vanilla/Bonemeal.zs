
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

var bonemeal = <minecraft:dye:15>;

// Oredicts
<ore:fertilizer>.add(bonemeal);
<ore:dyeWhite>.remove(bonemeal);
<ore:dye>.remove(bonemeal);

//Renaming, Adding Tooltip
bonemeal.displayName = game.localize("underdog.displayname.bonemeal");
bonemeal.addTooltip(game.localize("underdog.tooltip.bonemeal"));

//Removing Default Bonemeal Recipe
recipes.removeShapeless(bonemeal * 3);
recipes.removeShaped(bonemeal * 1);
