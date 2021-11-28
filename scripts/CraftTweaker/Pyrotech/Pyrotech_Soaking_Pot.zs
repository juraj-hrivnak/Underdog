#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.SoakingPot;

SoakingPot.removeAllRecipes();

//                    name,                      output,                               liquid,                       input,                     time
SoakingPot.addRecipe("minecraft_sponge"        , <minecraft:sponge:1>                , <liquid:water>        * 1000, <minecraft:sponge>       , 0);
SoakingPot.addRecipe("pyrotech_charcoal_block" , <minecraft:coal_block>              , <liquid:coal_tar>     * 1000, <pyrotech:charcoal_block>, 1200);
SoakingPot.addRecipe("ore_dustFlint"           , <pyrotech:material:3>               , <liquid:liquid_clay>   * 250, <ore:dustFlint>          , 1200);
SoakingPot.addRecipe("pyrotech_material_29"    , <pyrotech:material:30>              , <liquid:wood_tar>      * 150, <pyrotech:material:29>   , 1200);
SoakingPot.addRecipe("pyrotech_thatch"         , <pyrotech:wood_tar_block>           , <liquid:wood_tar>     * 1000, <pyrotech:thatch>        , 1200);
SoakingPot.addRecipe("pyrotech_material_14"    , <pyrotech:material:26>              , <liquid:wood_tar>      * 125, <pyrotech:material:14>   , 1200);
SoakingPot.addRecipe("ore_blockWool"           , <pyrotech:wool_tarred>              , <liquid:wood_tar>      * 250, <ore:blockWool>          , 1200);

SoakingPot.addRecipe("slaked_lime"             , <pyrotech:material:8>               , <liquid:water>         * 250, <pyrotech:material:22>   , 1200);

SoakingPot.addRecipe("ore_sugarcane"           , <pyrotech:material:25>              , <liquid:water>         * 125, <ore:sugarcane>          , 1200);
SoakingPot.addRecipe("pyrotech_rock_7"         , <pyrotech:material:25>              , <liquid:water>         * 150, <pyrotech:rock:7>        , 1200);

SoakingPot.addRecipe("pyrotech_material_20"    , <pyrotech:material:23>              , <liquid:wood_tar>       * 50, <pyrotech:material:20>   , 1200);
SoakingPot.addRecipe("tarred_lumber"           , <contenttweaker:tarred_lumber>      , <liquid:wood_tar>       * 50, <ore:lumber>             , 1200);

SoakingPot.addRecipe("treated_lumber"          , <contenttweaker:treated_wood_lumber>, <liquid:creosote>       * 50, <ore:lumber>             , 1200);

SoakingPot.addRecipe("minecraft_dirt_1"        , <minecraft:dirt:2>                  , <liquid:water>         * 250, <minecraft:dirt:1>       , 1200);
SoakingPot.addRecipe("minecraft_stonebrick"    , <minecraft:stonebrick:1>            , <liquid:water>         * 250, <minecraft:stonebrick>   , 1200);
SoakingPot.addRecipe("minecraft_cobblestone"   , <minecraft:mossy_cobblestone>       , <liquid:water>         * 250, <minecraft:cobblestone>  , 1200);

