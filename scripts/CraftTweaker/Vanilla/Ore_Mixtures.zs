
#priority -100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;

val mixture as IItemStack[][IItemStack] = {

    // Bronze
    <contenttweaker:ore_mixture_bronze>      : [<geolosys:cluster:3>                 , <geolosys:cluster:2>  * 3],

    // Constantan
    <contenttweaker:ore_mixture_constantan>  : [<geolosys:cluster:2>                 , <geolosys:cluster:7>     ],

    // Electrum
    <contenttweaker:ore_mixture_electrum>    : [<geolosys:cluster:1>                 , <geolosys:cluster:4>     ],

    // Invar
    <contenttweaker:ore_mixture_invar>       : [<geolosys:cluster:7>                 , <geolosys:cluster>    * 2],

};

// Add recipes for mixture
recipes.addShapeless(<contenttweaker:ore_mixture_bronze>, [<geolosys:cluster:2>, <geolosys:cluster:2>, <geolosys:cluster:3>, <geolosys:cluster:2>]);
recipes.addShapeless(<contenttweaker:ore_mixture_constantan>, [<geolosys:cluster:2>, <geolosys:cluster:7>]);
recipes.addShapeless(<contenttweaker:ore_mixture_electrum>, [<geolosys:cluster:1> , <geolosys:cluster:4>]);
recipes.addShapeless(<contenttweaker:ore_mixture_invar>, [<geolosys:cluster:7>, <geolosys:cluster>, <geolosys:cluster>]);

for output, input in mixture {

    // Add reversed recipes
    recipes.addShapeless(input[0], [output], null,
        function(out, cInfo, player) {
            player.give(input[1]);
        }
    );

}

<contenttweaker:ore_mixture_bronze>.addTooltip(format.gray(format.underline("3x") + " - Copper Cluster"));
<contenttweaker:ore_mixture_bronze>.addTooltip(format.gray(format.underline("1x") + " - Tin Cluster"));

<contenttweaker:ore_mixture_constantan>.addTooltip(format.gray(format.underline("1x") + " - Copper Cluster"));
<contenttweaker:ore_mixture_constantan>.addTooltip(format.gray(format.underline("1x") + " - Nickel Cluster"));

<contenttweaker:ore_mixture_electrum>.addTooltip(format.gray(format.underline("1x") + " - Gold Cluster"));
<contenttweaker:ore_mixture_electrum>.addTooltip(format.gray(format.underline("1x") + " - Silver Cluster"));

<contenttweaker:ore_mixture_invar>.addTooltip(format.gray(format.underline("2x") + " - Iron Cluster"));
<contenttweaker:ore_mixture_invar>.addTooltip(format.gray(format.underline("1x") + " - Nickel Cluster"));

<ore:mixtureBronze>.add(<contenttweaker:ore_mixture_bronze>);
<ore:mixtureConstantan>.add(<contenttweaker:ore_mixture_constantan>);
<ore:mixtureElectrum>.add(<contenttweaker:ore_mixture_electrum>);
<ore:mixtureInvar>.add(<contenttweaker:ore_mixture_invar>);