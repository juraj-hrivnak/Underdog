
#priority -100
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import crafttweaker.oredict.IOreDictEntry;
import mods.mekanism.smelter as MKSmelter;
import mods.pyrotech.Bloomery;

Bloomery.removeAllBloomeryRecipes();
Bloomery.removeAllWitherForgeRecipes();

rh(<pyrotech:wither_forge>);
hc("pyrotech.wither.forge");

val commonOres as IIngredient[][IItemStack] = {

    <pyrotech:material:33>         : [<ore:obsidian>    , <pyrotech:slag>                    ],
    <minecraft:iron_ingot>         : [<ore:oreIron>     , <pyrotech:generated_slag_iron>     ],
    <minecraft:gold_ingot>         : [<ore:oreGold>     , <pyrotech:generated_slag_gold>     ],
    <geolosys:ingot>               : [<ore:oreCopper>   , <pyrotech:generated_slag_copper>   ],
    <geolosys:ingot:1>             : [<ore:oreTin>      , <pyrotech:generated_slag_tin>      ],
    <geolosys:ingot:2>             : [<ore:oreSilver>   , <pyrotech:generated_slag_silver>   ],
    <geolosys:ingot:3>             : [<ore:oreLead>     , <pyrotech:generated_slag_lead>     ],
    <geolosys:ingot:4>             : [<ore:oreAluminum> , <pyrotech:generated_slag_aluminum> ],
    <geolosys:ingot:5>             : [<ore:oreNickel>   , <pyrotech:generated_slag_nickel>   ],
    <geolosys:ingot:6>             : [<ore:orePlatinum> , <pyrotech:slag>                    ],
    <geolosys:ingot:7>             : [<ore:oreZinc>     , <pyrotech:slag>                    ],
    <immersiveengineering:metal:5> : [<ore:oreUranium>  , <pyrotech:generated_slag_uranium>  ],
    <mekanism:ingot:1>             : [<ore:oreOsmium>   , <pyrotech:generated_slag_osmium>   ],
    <tconstruct:ingots>            : [<ore:oreCobalt>   , <pyrotech:generated_slag_cobalt>   ],
    <tconstruct:ingots:1>          : [<ore:oreArdite>   , <pyrotech:generated_slag_ardite>   ]
    // <ore:oreYellorium>

};

for output, input in commonOres {
    furnace.remove(output);
    Bloomery.createBloomeryBuilder(
            "common_bloomery_" + input[0].items[0].name,    // recipe name
            output,                                         // output
            input[0]                                        // input
        )
        .setAnvilTiers(["granite", "ironclad"])
        .setBurnTimeTicks(1200)
        .setFailureChance(0.0)
        .setBloomYield(1, 4)
        .setSlagItem(input[1].items[0], 4)
        .register();
    MKSmelter.addRecipe(input[0], output);
}

///////////////////////////////////////////////////

val richOres as IIngredient[IItemStack] = {

    <minecraft:iron_ingot>          : <ore:richOreIron>         ,
    <minecraft:gold_ingot>          : <ore:richOreGold>         ,
    <geolosys:ingot>                : <ore:richOreCopper> | <ore:richOreMKCopper>,
    <geolosys:ingot:4>              : <ore:richOreAluminum>     ,
    <geolosys:ingot:3>              : <ore:richOreLead>         ,
    <geolosys:ingot:2>              : <ore:richOreSilver>       ,
    <geolosys:ingot:5>              : <ore:richOreNickel>       ,
    <immersiveengineering:metal:5>  : <ore:richOreUranium>      ,
    <mekanism:ingot:1>              : <ore:richOreMKOsmium>     ,
    <geolosys:ingot:1>              : <ore:richOreMKTin>        ,

    // // Ore Mixture
    // <mekanism:ingot:2>              : <ore:mixtureBronze>       ,
    // <immersiveengineering:metal:6>  : <ore:mixtureConstantan>   ,
    // <immersiveengineering:metal:7>  : <ore:mixtureElectrum>     ,
    // <plustic:invaringot>            : <ore:mixtureInvar>        ,

};

for output, input in richOres {
    furnace.remove(output, input);
    Bloomery.createBloomeryBuilder(
            "rich_bloomery_" + input.items[0].name,         // recipe name
            output,                                         // output
            input                                           // input
        )
        .setAnvilTiers(["ironclad"])
        .setBurnTimeTicks(1200)
        .setFailureChance(0.0)
        .setBloomYield(2, 6)
        .setSlagItem(<pyrotech:slag>, 4)
        .register();
    MKSmelter.addRecipe(input, output * 2);
}

val slags as IItemStack[][] = [
    [<pyrotech:slag>                         , <pyrotech:pile_slag>                   ],
    [<pyrotech:generated_slag_aluminum>      , <pyrotech:generated_pile_slag_aluminum>],
    [<pyrotech:generated_slag_ardite>        , <pyrotech:generated_pile_slag_ardite>  ],
    [<pyrotech:generated_slag_cobalt>        , <pyrotech:generated_pile_slag_cobalt>  ],
    [<pyrotech:generated_slag_copper>        , <pyrotech:generated_pile_slag_copper>  ],
    [<pyrotech:generated_slag_gold>          , <pyrotech:generated_pile_slag_gold>    ],
    [<pyrotech:generated_slag_iron>          , <pyrotech:generated_pile_slag_iron>    ],
    [<pyrotech:generated_slag_lead>          , <pyrotech:generated_pile_slag_lead>    ],
    [<pyrotech:generated_slag_nickel>        , <pyrotech:generated_pile_slag_nickel>  ],
    [<pyrotech:generated_slag_osmium>        , <pyrotech:generated_pile_slag_osmium>  ],
    [<pyrotech:generated_slag_silver>        , <pyrotech:generated_pile_slag_silver>  ],
    [<pyrotech:generated_slag_tin>           , <pyrotech:generated_pile_slag_tin>     ],
    [<pyrotech:generated_slag_uranium>       , <pyrotech:generated_pile_slag_uranium> ],
];

for i in slags {
    <ore:slag>.add(i[0]);
    <ore:slagHeap>.add(i[1]);
}
