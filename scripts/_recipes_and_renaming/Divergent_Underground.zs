import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Renaming Boulder
<divergentunderground:boulder>.displayName = "Boulder";
<divergentunderground:boulder>.addTooltip("§a:/");

// Crafting rocks from cobblestones
recipes.addShapeless(<divergentunderground:rock_stone> * 4, [<minecraft:cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_endstone> * 4, [<minecraft:end_stone>]);
recipes.addShapeless(<divergentunderground:rock_andesite> * 4, [<divergentunderground:andesite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_diorite> * 4, [<divergentunderground:diorite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_granite> * 4, [<divergentunderground:granite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_quark_limestone> * 4, [<divergentunderground:quark_limestone_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_quark_marble> * 4, [<divergentunderground:quark_marble_cobblestone>]);


