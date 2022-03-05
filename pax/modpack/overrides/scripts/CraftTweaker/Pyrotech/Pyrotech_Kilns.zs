
#priority -50
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;
import mods.mekanism.smelter as MKSmelter;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.PitKiln;

BrickKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
PitKiln.removeAllRecipes();

val potteryItems as IIngredient[IItemStack] = {

//  IItemStack output,                            IIngredient input
    <minecraft:hardened_clay>                   : <minecraft:clay>,
    <pyrotech:bucket_clay>                      : <pyrotech:bucket_clay_unfired>,
    <minecraft:brick>                           : <pyrotech:material:24>,
    <pyrotech:material:5>                       : <pyrotech:material:9>,

    // Terracota
    <minecraft:white_glazed_terracotta>         : <minecraft:stained_hardened_clay>,
    <minecraft:orange_glazed_terracotta>        : <minecraft:stained_hardened_clay:1>,
    <minecraft:magenta_glazed_terracotta>       : <minecraft:stained_hardened_clay:2>,
    <minecraft:light_blue_glazed_terracotta>    : <minecraft:stained_hardened_clay:3>,
    <minecraft:yellow_glazed_terracotta>        : <minecraft:stained_hardened_clay:4>,
    <minecraft:lime_glazed_terracotta>          : <minecraft:stained_hardened_clay:5>,
    <minecraft:pink_glazed_terracotta>          : <minecraft:stained_hardened_clay:6>,
    <minecraft:gray_glazed_terracotta>          : <minecraft:stained_hardened_clay:7>,
    <minecraft:silver_glazed_terracotta>        : <minecraft:stained_hardened_clay:8>,
    <minecraft:cyan_glazed_terracotta>          : <minecraft:stained_hardened_clay:9>,
    <minecraft:purple_glazed_terracotta>        : <minecraft:stained_hardened_clay:10>,
    <minecraft:blue_glazed_terracotta>          : <minecraft:stained_hardened_clay:11>,
    <minecraft:brown_glazed_terracotta>         : <minecraft:stained_hardened_clay:12>,
    <minecraft:green_glazed_terracotta>         : <minecraft:stained_hardened_clay:13>,
    <minecraft:red_glazed_terracotta>           : <minecraft:stained_hardened_clay:14>,
    <minecraft:black_glazed_terracotta>         : <minecraft:stained_hardened_clay:15>,

    // Connectors | Relays
    <immersiveengineering:connector>            : <contenttweaker:unfired_lv_connector>,
    <immersiveengineering:connector:2>          : <contenttweaker:unfired_mv_connector>,
    <immersiveengineering:connector:4>          : <contenttweaker:unfired_hv_connector>,
    <immersiveengineering:connector:1>          : <contenttweaker:unfired_lv_relay>,
    <immersiveengineering:connector:3>          : <contenttweaker:unfired_mv_relay>,

    // Pot
    <rustic:vase>                               : <contenttweaker:unfired_pot>,
};

val nonPotteryItems as IIngredient[IItemStack] = {

//  IItemStack output,            IIngredient input
    <minecraft:stone_slab>      : <minecraft:stone_slab:3>                              ,
    <pyrotech:material:15>      : <pyrotech:rock:7>                                     ,
    <minecraft:stone>           : <minecraft:cobblestone>                               ,
    <minecraft:stone:5>         : <divergentunderground:andesite_cobblestone>           ,
    <minecraft:stone:3>         : <divergentunderground:diorite_cobblestone>            ,
    <minecraft:stone:1>         : <divergentunderground:granite_cobblestone>            ,
    <quark:limestone>           : <divergentunderground:quark_limestone_cobblestone>    ,
    <quark:marble>              : <divergentunderground:quark_marble_cobblestone>       ,
    <minecraft:glass>           : <ore:sand>                                            ,
    <pyrotech:material:22>      : <divergentunderground:rock_quark_limestone>           ,
    <pyrotech:slag_glass>       : <ore:slagHeap>                                        ,

    // Cooking For Blockheads
    <cookingforblockheads:recipe_book:1> : <minecraft:book>                             ,
    <cookingforblockheads:recipe_book:1> : <cookingforblockheads:recipe_book>           ,

};

for output, input in potteryItems {
    furnace.remove(output, input);
    PitKiln.addRecipe(  "pit_kiln_"   + output.displayName, output, input, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:6>, <pyrotech:material:7>]);
    StoneKiln.addRecipe("stone_kiln_" + output.displayName, output, input, 600, 0.16,  [<pyrotech:material>, <pyrotech:material:6>, <pyrotech:material:7>]);
    BrickKiln.addRecipe("brick_kiln_" + output.displayName, output, input, 600);
    MKSmelter.addRecipe(input, output);
}

for output, input in nonPotteryItems {
    furnace.remove(output, input);
    PitKiln.addRecipe(  "pitkiln_"    + output.displayName, output, input, 2400, 0.33, [<pyrotech:material>, <pyrotech:material> * 2, <pyrotech:material> * 3]);
    StoneKiln.addRecipe("stone_kiln_" + output.displayName, output, input, 600, 0.16,  [<pyrotech:material>, <pyrotech:material> * 2, <pyrotech:material> * 3]);
    BrickKiln.addRecipe("brick_kiln_" + output.displayName, output, input, 600);
    MKSmelter.addRecipe(input, output);
}