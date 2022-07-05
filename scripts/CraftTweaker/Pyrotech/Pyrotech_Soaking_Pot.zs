
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.SoakingPot;

SoakingPot.removeAllRecipes();

function soakingPotWaterRecipe(name as string, output as IItemStack, waterAmount as int, input as IIngredient, time as int) {
    SoakingPot.addRecipe(name + "_water"        , output, <liquid:water>          * waterAmount, input, time);
    SoakingPot.addRecipe(name + "_purifiedwater", output, <liquid:purifiedwater>  * waterAmount, input, time);
    SoakingPot.addRecipe(name + "_saltwater"    , output, <liquid:saltwater>      * waterAmount, input, time);
}

//                    name,                       output,                               liquid,                       input,                     time
soakingPotWaterRecipe("minecraft_sponge"        , <minecraft:sponge:1>                , 1000                        , <minecraft:sponge>       , 0);
SoakingPot.addRecipe("pyrotech_charcoal_block"  , <minecraft:coal_block>              , <liquid:coal_tar>     * 1000, <pyrotech:charcoal_block>, 1200);


SoakingPot.addRecipe("ore_dustFlint"            , <pyrotech:material:3>               , <liquid:liquid_clay>   * 250, <ore:dustFlint>          , 60);

SoakingPot.addRecipe("pyrotech_material_29"     , <pyrotech:material:30>              , <liquid:creosote>      * 150, <pyrotech:material:29>   , 1200);
SoakingPot.addRecipe("pyrotech_thatch"          , <pyrotech:wood_tar_block>           , <liquid:creosote>     * 1000, <pyrotech:thatch>        , 1200);
SoakingPot.addRecipe("pyrotech_material_14"     , <pyrotech:material:26>              , <liquid:creosote>      * 125, <pyrotech:material:14>   , 1200);
SoakingPot.addRecipe("ore_blockWool"            , <pyrotech:wool_tarred>              , <liquid:creosote>      * 250, <ore:blockWool>          , 1200);

// Slaked Lime
soakingPotWaterRecipe("slaked_lime"             , <pyrotech:material:8>               , 250                         , <pyrotech:material:22>   , 600);

soakingPotWaterRecipe("ore_sugarcane"           , <pyrotech:material:25>              , 125                         , <ore:sugarcane>          , 1200);
soakingPotWaterRecipe("pyrotech_rock_7"         , <pyrotech:material:25>              , 150                         , <pyrotech:rock:7>        , 1200);

SoakingPot.addRecipe("pyrotech_material_20"     , <pyrotech:material:23>              , <liquid:creosote>       * 50, <pyrotech:material:20>   , 1200);

// Treated Lumber
SoakingPot.addRecipe("treated_lumber"           , <contenttweaker:treated_wood_lumber>, <liquid:creosote>      * 125, <ore:lumber>             , 200);

soakingPotWaterRecipe("minecraft_dirt_1"        , <minecraft:dirt:2>                  , 250                         , <minecraft:dirt:1>       , 1200);
soakingPotWaterRecipe("minecraft_stonebrick"    , <minecraft:stonebrick:1>            , 250                         , <minecraft:stonebrick>   , 1200);
soakingPotWaterRecipe("minecraft_cobblestone"   , <minecraft:mossy_cobblestone>       , 250                         , <minecraft:cobblestone>  , 1200);
