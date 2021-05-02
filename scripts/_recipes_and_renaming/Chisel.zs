#modloaded chisel
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.chisel.Carving as carving;

val chisels as IItemStack[] = [
    <chisel:chisel_iron>,
    <chisel:chisel_diamond>,
    <chisel:chisel_hitech>,
    <tcomplement:chisel>
]; for i in chisels {
    <ore:chisel>.add(i);
}

val gemsToBeChiseled = {
    <divergentunderground:gem_raw_emerald> : <minecraft:emerald>,
    <divergentunderground:gem_raw_diamond> : <minecraft:diamond>,
    <divergentunderground:gem_raw_bop_amethyst> : <biomesoplenty:gem>,
    <divergentunderground:gem_raw_bop_ruby> : <biomesoplenty:gem:1>,
    <divergentunderground:gem_raw_bop_peridot> : <biomesoplenty:gem:2>,
    <divergentunderground:gem_raw_bop_topaz> : <biomesoplenty:gem:3>,
    <divergentunderground:gem_raw_bop_tanzanite> : <biomesoplenty:gem:4>,
    <divergentunderground:gem_raw_bop_malachite> : <biomesoplenty:gem:5>,
    <divergentunderground:gem_raw_bop_sapphire> : <biomesoplenty:gem:6>
} as IItemStack[IItemStack];

for uncutGem, chiseledGem in gemsToBeChiseled {
    recipes.addShapeless(chiseledGem, [<ore:chisel>.reuse().transformDamage(), uncutGem]);
}

// Carving
carving.addVariation("stone", <divergentunderground:hard_stone>);
carving.addVariation("granite", <divergentunderground:hard_granite>);
carving.addVariation("andesite", <divergentunderground:hard_andesite>);
carving.addVariation("diorite", <divergentunderground:hard_diorite>);