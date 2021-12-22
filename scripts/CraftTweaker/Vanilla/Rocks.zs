
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

recipes.replaceAllOccurences(<ore:stone>, <ore:stones>, <*>);

// Slab
recipes.remove(<minecraft:stone_slab:3>);
recipes.addShaped(<minecraft:stone_slab:3> * 6, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Fix
recipes.remove(<quark:stone_stairs>);
recipes.addShaped(<quark:stone_stairs> * 8,
   [[<ore:stone>, null       , null       ],
    [<ore:stone>, <ore:stone>, null       ],
    [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.remove(<minecraft:stonebrick>);
recipes.addShaped(<minecraft:stonebrick> * 4,
   [[<ore:stone>, <ore:stone>],
    [<ore:stone>, <ore:stone>]]);

recipes.remove(<quark:stone_wall>);
recipes.addShaped(<quark:stone_wall> * 6,
   [[<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.remove(<quark:stone_speleothem>);
recipes.addShaped(<quark:stone_speleothem> * 6,
   [[<ore:stone>],
    [<ore:stone>],
    [<ore:stone>]]);
