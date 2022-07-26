
#priority -20
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.CraftTweaker.Utils.RecipeUtils;

val rocks as IItemStack[] = [
    <divergentunderground:rock_stone>           ,
    <divergentunderground:rock_endstone>        ,
    <divergentunderground:rock_netherrack>      ,
    <divergentunderground:rock_andesite>        ,
    <divergentunderground:rock_diorite>         ,
    <divergentunderground:rock_granite>         ,
    <divergentunderground:rock_quark_limestone> ,
    <divergentunderground:rock_quark_marble>
];

for item in rocks {
    <ore:rocks>.add(item);
}

recipes.replaceAllOccurences(<ore:cobblestone>, <ore:rocks>, <*>);

val stones as IItemStack[] = [
    <minecraft:stone>       ,
    <minecraft:end_stone>   ,
    <minecraft:netherrack>  ,
    <minecraft:stone:5>     ,
    <minecraft:stone:3>     ,
    <minecraft:stone:1>     ,
    <quark:limestone>       ,
    <quark:marble>          ,
];

for item in stones {
    <ore:stones>.add(item);
}

recipes.replaceAllOccurences(<ore:stone>, <ore:stones>, <*>);

// Fix
RecipeUtils.tweakRecipe(true, <quark:stone_stairs> * 8,
   [[<ore:stone>, null       , null        ],
    [<ore:stone>, <ore:stone>, null        ],
    [<ore:stone>, <ore:stone>, <ore:stone> ]]);

RecipeUtils.tweakRecipe(true, <minecraft:stonebrick> * 4,
   [[<ore:stone>, <ore:stone> ],
    [<ore:stone>, <ore:stone> ]]);

RecipeUtils.tweakRecipe(true, <quark:stone_wall> * 6,
   [[<ore:stone>, <ore:stone>, <ore:stone> ],
    [<ore:stone>, <ore:stone>, <ore:stone> ]]);

RecipeUtils.tweakRecipe(true, <quark:stone_speleothem> * 6,
   [[<ore:stone> ],
    [<ore:stone> ],
    [<ore:stone> ]]);
