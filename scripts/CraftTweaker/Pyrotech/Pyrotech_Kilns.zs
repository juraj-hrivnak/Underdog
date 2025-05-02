
#priority -50
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;
import mods.mekanism.smelter as MKSmelter;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.PitKiln;

import scripts.CraftTweaker.Utils.RecipeUtils.getNameForRecipe;

BrickKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
PitKiln.removeAllRecipes();

val potteryItems as IItemStack[IIngredient] = {

//  IIngredient input                                     IItemStack output
    <minecraft:clay>                                    : <minecraft:hardened_clay>                       ,
    <pyrotech:bucket_clay_unfired>                      : <pyrotech:bucket_clay>                          ,
    <pyrotech:material:24>                              : <minecraft:brick>                               ,
    <pyrotech:material:9>                               : <pyrotech:material:5>                           ,

    // Terracota
    <minecraft:stained_hardened_clay>                   : <minecraft:white_glazed_terracotta>             ,
    <minecraft:stained_hardened_clay:1>                 : <minecraft:orange_glazed_terracotta>            ,
    <minecraft:stained_hardened_clay:2>                 : <minecraft:magenta_glazed_terracotta>           ,
    <minecraft:stained_hardened_clay:3>                 : <minecraft:light_blue_glazed_terracotta>        ,
    <minecraft:stained_hardened_clay:4>                 : <minecraft:yellow_glazed_terracotta>            ,
    <minecraft:stained_hardened_clay:5>                 : <minecraft:lime_glazed_terracotta>              ,
    <minecraft:stained_hardened_clay:6>                 : <minecraft:pink_glazed_terracotta>              ,
    <minecraft:stained_hardened_clay:7>                 : <minecraft:gray_glazed_terracotta>              ,
    <minecraft:stained_hardened_clay:8>                 : <minecraft:silver_glazed_terracotta>            ,
    <minecraft:stained_hardened_clay:9>                 : <minecraft:cyan_glazed_terracotta>              ,
    <minecraft:stained_hardened_clay:10>                : <minecraft:purple_glazed_terracotta>            ,
    <minecraft:stained_hardened_clay:11>                : <minecraft:blue_glazed_terracotta>              ,
    <minecraft:stained_hardened_clay:12>                : <minecraft:brown_glazed_terracotta>             ,
    <minecraft:stained_hardened_clay:13>                : <minecraft:green_glazed_terracotta>             ,
    <minecraft:stained_hardened_clay:14>                : <minecraft:red_glazed_terracotta>               ,
    <minecraft:stained_hardened_clay:15>                : <minecraft:black_glazed_terracotta>             ,

    // Connectors | Relays
    <contenttweaker:unfired_lv_connector>               : <immersiveengineering:connector>                ,
    <contenttweaker:unfired_mv_connector>               : <immersiveengineering:connector:2>              ,
    <contenttweaker:unfired_hv_connector>               : <immersiveengineering:connector:4>              ,
    <contenttweaker:unfired_lv_relay>                   : <immersiveengineering:connector:1>              ,
    <contenttweaker:unfired_mv_relay>                   : <immersiveengineering:connector:3>              ,

    // Pot
    <contenttweaker:unfired_pot>                        : <rustic:vase>                                   ,

    <ore:blockMud>                                      : <minecraft:dirt>                                , // Dirt <= Mud Block
    <ore:ballMud>                                       : <biomesoplenty:mud_brick>                       , // Mud Brick <= Mud Ball
    <dawnoftimebuilder:grey_clay_tile>                  : <dawnoftimebuilder:grey_tile>                   , // Grey Tile <= Grey Clay Tile
};

val nonPotteryItems as IItemStack[IIngredient] = {

//  IIngredient input                                     IItemStack output
    <minecraft:stone_slab:3>                            : <minecraft:stone_slab>                          ,
    <pyrotech:rock:7>                                   : <pyrotech:material:15>                          ,
    <minecraft:cobblestone>                             : <minecraft:stone>                               ,
    <divergentunderground:andesite_cobblestone>         : <minecraft:stone:5>                             ,
    <divergentunderground:diorite_cobblestone>          : <minecraft:stone:3>                             ,
    <divergentunderground:granite_cobblestone>          : <minecraft:stone:1>                             ,
    <divergentunderground:quark_limestone_cobblestone>  : <quark:limestone>                               ,
    <divergentunderground:quark_marble_cobblestone>     : <quark:marble>                                  ,
    <ore:sand>                                          : <minecraft:glass>                               , // Glass <= Sand
    <ore:tropicraftSand>                                : <minecraft:glass>                               , // Glass <= Tropicraft Sand
    <divergentunderground:rock_quark_limestone>         : <pyrotech:material:22>                          ,
    <ore:slagHeap>                                      : <pyrotech:slag_glass>                           ,
    <cuisine:bamboo>                                    : <cuisine:material:6>                            , // Bamboo Charcoal
    <ore:meteorite>                                     : <appliedenergistics2:smooth_sky_stone_block>    , // Smooth Meteorite Block
    <minecraft:book>                                    : <cookingforblockheads:recipe_book:1>            , // Cooking For Blockheads
    <cookingforblockheads:recipe_book>                  : <cookingforblockheads:recipe_book:1>            , // Cooking For Blockheads
    <ore:blockCactus>                                   : <minecraft:dye:2>                               , // Green Dye
    <ore:plantTinycactus>                               : <minecraft:dye:2>                               , // Green Dye
    <industrialforegoing:dryrubber>                     : <industrialforegoing:plastic>                   , // Plastic

};

for input, output in potteryItems {
    furnace.remove(output, input);
    PitKiln.addRecipe("pit_kiln_pottery_" ~ getNameForRecipe([input, output]), output, input, 2400, 0.33, [<pyrotech:material>, <pyrotech:material:6>, <pyrotech:material:7>]);
    StoneKiln.addRecipe("stone_kiln_pottery_" ~ getNameForRecipe([input, output]), output, input, 600, 0.16, [<pyrotech:material>, <pyrotech:material:6>, <pyrotech:material:7>]);
    BrickKiln.addRecipe("brick_kiln_pottery_" ~ getNameForRecipe([input, output]), output, input, 600);
    MKSmelter.addRecipe(input, output);
}

for input, output in nonPotteryItems {
    furnace.remove(output, input);
    PitKiln.addRecipe("pit_kiln_non_pottery_" ~ getNameForRecipe([input, output]), output, input, 2400, 0.33, [<pyrotech:material>, <pyrotech:material> * 2, <pyrotech:material> * 3]);
    StoneKiln.addRecipe("stone_kiln_non_pottery_" ~ getNameForRecipe([input, output]), output, input, 600, 0.16, [<pyrotech:material>, <pyrotech:material> * 2, <pyrotech:material> * 3]);
    BrickKiln.addRecipe("brick_kiln_non_pottery_" ~ getNameForRecipe([input, output]), output, input, 600);
    MKSmelter.addRecipe(input, output);
}
