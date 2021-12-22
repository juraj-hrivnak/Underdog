
#priority -20
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;


val rocks = [
    <divergentunderground:rock_stone>,
    <divergentunderground:rock_endstone>,
    <divergentunderground:rock_andesite>,
    <divergentunderground:rock_diorite>,
    <divergentunderground:rock_granite>,
    <divergentunderground:rock_quark_limestone>,
    <divergentunderground:rock_quark_marble>
] as IItemStack[];

for item in rocks {
    <ore:rocks>.add(item);
}

recipes.replaceAllOccurences(<ore:cobblestone>, <ore:rocks>, <*>);

val stones = [
    <minecraft:stone>   ,
    <minecraft:stone:5> ,
    <minecraft:stone:3> ,
    <minecraft:stone:1> ,
    <quark:limestone>   ,
    <quark:marble>      ,
] as IItemStack[];

for item in rocks {
    <ore:stones>.add(item);
}

// Pressure Plate
recipes.remove(<minecraft:stone_pressure_plate>);
recipes.addShaped(<minecraft:stone_pressure_plate>, [[<ore:stones>, <ore:stones>]]);

// Slab
recipes.remove(<minecraft:stone_slab:3>);
recipes.addShaped(<minecraft:stone_slab:3> * 6, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
