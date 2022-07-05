
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;

import scripts.CraftTweaker.Utils.RecipeUtils.getNameForRecipe;

BrickCrucible.removeAllRecipes();

val liquidsAndOres as ILiquidStack[IIngredient] = {

    // Ore Mixtures
    <ore:mixtureBronze>     : <liquid:bronze>         * 1152  ,
    <ore:mixtureConstantan> : <liquid:constantan>     * 576   ,
    <ore:mixtureElectrum>   : <liquid:electrum>       * 576   ,
    <ore:mixtureInvar>      : <liquid:invar>          * 864   ,


    // Blocks
    <ore:blockGlass>        : <liquid:glass>          * 1000  ,
    <ore:paneGlass>         : <liquid:glass>          * 375   ,
    <ore:cobblestone>       : <liquid:lava>           * 250   ,
    <ore:obsidian>          : <liquid:obsidian>       * 288   ,


    // Ores
    <ore:oreCopper>         : <liquid:copper>         * 288   ,
    <ore:oreTin>            : <liquid:tin>            * 288   ,
    <ore:oreSilver>         : <liquid:silver>         * 288   ,
    <ore:oreLead>           : <liquid:lead>           * 288   ,
    <ore:oreAluminum>       : <liquid:aluminum>       * 288   ,
    <ore:oreNickel>         : <liquid:nickel>         * 288   ,
 // <ore:orePlatinum>       : <liquid:platinum>       * 288   ,
    <ore:oreZinc>           : <liquid:zinc>           * 288   ,
    <ore:oreUranium>        : <liquid:uranium>        * 288   ,
 // <ore:oreYellorium>      : <liquid:uranium>        * 288   ,
    <ore:oreOsmium>         : <liquid:osmium>         * 288   ,
    <ore:oreCobalt>         : <liquid:cobalt>         * 288   ,
    <ore:oreArdite>         : <liquid:ardite>         * 288   ,


    // Ingots
    <ore:ingotIron>         : <liquid:iron>           * 144   ,
    <ore:ingotGold>         : <liquid:gold>           * 144   ,
    <ore:ingotCopper>       : <liquid:copper>         * 144   ,
    <ore:ingotTin>          : <liquid:tin>            * 144   ,
    <ore:ingotSilver>       : <liquid:silver>         * 144   ,
    <ore:ingotLead>         : <liquid:lead>           * 144   ,
    <ore:ingotAluminum>     : <liquid:aluminum>       * 144   ,
    <ore:ingotNickel>       : <liquid:nickel>         * 144   ,
    <ore:ingotZinc>         : <liquid:zinc>           * 144   ,
    <ore:ingotUranium>      : <liquid:uranium>        * 144   ,
    <ore:ingotOsmium>       : <liquid:osmium>         * 144   ,
    <ore:ingotCobalt>       : <liquid:cobalt>         * 144   ,
    <ore:ingotArdite>       : <liquid:ardite>         * 144   ,

    <ore:ingotConstantan>   : <liquid:constantan>     * 144   ,
    <ore:ingotElectrum>     : <liquid:electrum>       * 144   ,
    <ore:ingotSteel>        : <liquid:steel>          * 144   ,

    <ore:ingotBronze>       : <liquid:bronze>         * 144   ,


    // Dusts
    <ore:dustIron>          : <liquid:iron>           * 144   ,
    <ore:dustGold>          : <liquid:gold>           * 144   ,
    <ore:dustCopper>        : <liquid:copper>         * 144   ,
    <ore:dustTin>           : <liquid:tin>            * 144   ,
    <ore:dustSilver>        : <liquid:silver>         * 144   ,
    <ore:dustLead>          : <liquid:lead>           * 144   ,
    <ore:dustAluminum>      : <liquid:aluminum>       * 144   ,
    <ore:dustNickel>        : <liquid:nickel>         * 144   ,
    <ore:dustZinc>          : <liquid:zinc>           * 144   ,
    <ore:dustUranium>       : <liquid:uranium>        * 144   ,
    <ore:dustOsmium>        : <liquid:osmium>         * 144   ,
    <ore:dustCobalt>        : <liquid:cobalt>         * 144   ,
    <ore:dustArdite>        : <liquid:ardite>         * 144   ,

    <ore:dustConstantan>    : <liquid:constantan>     * 144   ,
    <ore:dustElectrum>      : <liquid:electrum>       * 144   ,
    <ore:dustSteel>         : <liquid:steel>          * 144   ,


    // Nuggets
    <ore:nuggetIron>        : <liquid:iron>           * 16    ,
    <ore:nuggetGold>        : <liquid:gold>           * 16    ,
    <ore:nuggetCopper>      : <liquid:copper>         * 16    ,
    <ore:nuggetTin>         : <liquid:tin>            * 16    ,
    <ore:nuggetSilver>      : <liquid:silver>         * 16    ,
    <ore:nuggetLead>        : <liquid:lead>           * 16    ,
    <ore:nuggetAluminum>    : <liquid:aluminum>       * 16    ,
    <ore:nuggetNickel>      : <liquid:nickel>         * 16    ,
    <ore:nuggetZinc>        : <liquid:zinc>           * 16    ,
    <ore:nuggetUranium>     : <liquid:uranium>        * 16    ,
    <ore:nuggetOsmium>      : <liquid:osmium>         * 16    ,
    <ore:nuggetCobalt>      : <liquid:cobalt>         * 16    ,
    <ore:nuggetArdite>      : <liquid:ardite>         * 16    ,

    <ore:nuggetConstantan>  : <liquid:constantan>     * 16    ,
    <ore:nuggetElectrum>    : <liquid:electrum>       * 16    ,
    <ore:nuggetSteel>       : <liquid:steel>          * 16    ,

    <ore:nuggetBronze>      : <liquid:bronze>         * 16    ,

};

for input, output in liquidsAndOres {

    BrickCrucible.addRecipe(
        "melting_" ~ getNameForRecipe([input, output]),  // recipe name
        output,                                 // output
        input,                                  // input
        1200                                    // duration in ticks
    );

}

// Liquid Clay
StoneCrucible.removeRecipes(<liquid:liquid_clay>);
StoneCrucible.addRecipe("melting_liquid_clay", <liquid:liquid_clay> * 144, <minecraft:clay_ball>, 60);
StoneCrucible.addRecipe("water_purifying", <liquid:water> * 1000, <liquid:purifiedwater> * 1000, 60);
