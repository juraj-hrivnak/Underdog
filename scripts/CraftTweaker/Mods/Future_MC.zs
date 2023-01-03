
#modloaded futuremc
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

// Bamboo compat
<ore:bamboo>.add(<futuremc:bamboo>);

mods.futuremc.Stonecutter.clearRecipes();

// Cobblestone
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_stone> * 4, <minecraft:cobblestone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_endstone> * 4, <minecraft:end_stone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_andesite> * 4, <divergentunderground:andesite_cobblestone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_diorite> * 4, <divergentunderground:diorite_cobblestone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_granite> * 4, <divergentunderground:granite_cobblestone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_quark_limestone> * 4, <divergentunderground:quark_limestone_cobblestone>);
mods.futuremc.Stonecutter.addOutput(<divergentunderground:rock_quark_marble> * 4, <divergentunderground:quark_marble_cobblestone>);