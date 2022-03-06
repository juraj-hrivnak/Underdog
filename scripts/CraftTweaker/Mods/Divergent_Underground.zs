#modloaded divergentunderground
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hide as h;

// Renaming Boulder
<divergentunderground:boulder>.displayName = game.localize("underdog.displayname.boulder");
<divergentunderground:boulder>.addTooltip(game.localize("underdog.tooltip.boulder"));

// Crafting rocks from cobblestones, Qol. stuff, you know :D
recipes.addShapeless(<divergentunderground:rock_stone> * 4, [<minecraft:cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_endstone> * 4, [<minecraft:end_stone>]);
recipes.addShapeless(<divergentunderground:rock_andesite> * 4, [<divergentunderground:andesite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_diorite> * 4, [<divergentunderground:diorite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_granite> * 4, [<divergentunderground:granite_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_quark_limestone> * 4, [<divergentunderground:quark_limestone_cobblestone>]);
recipes.addShapeless(<divergentunderground:rock_quark_marble> * 4, [<divergentunderground:quark_marble_cobblestone>]);

<ore:cobblestone>.add(<divergentunderground:andesite_cobblestone>);
<ore:cobblestone>.add(<divergentunderground:diorite_cobblestone>);
<ore:cobblestone>.add(<divergentunderground:granite_cobblestone>);
<ore:cobblestone>.add(<divergentunderground:quark_limestone_cobblestone>);
<ore:cobblestone>.add(<divergentunderground:quark_marble_cobblestone>);

// Removing Chisel
rh(<divergentunderground:chisel>);

// Removing Basalt
rh(<divergentunderground:quark_basalt_cobblestone>);
rh(<divergentunderground:rock_quark_basalt>);

// Hiding duplicated blocks
h(<divergentunderground:hard_stone>);
h(<divergentunderground:hard_granite>);
h(<divergentunderground:hard_andesite>);
h(<divergentunderground:hard_diorite>);
h(<divergentunderground:quark_hard_marble_rock>);
h(<divergentunderground:quark_hard_limestone_rock>);
