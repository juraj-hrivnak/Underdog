
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.ArcFurnace as ArcFurnace;
import mods.mekanism.smelter as MKSmelter;

val commonOres as IIngredient[][IItemStack] = {

    <pyrotech:material:33>          * 2 : [<ore:obsidian>    , <pyrotech:slag>                    ],
    <minecraft:iron_ingot>          * 2 : [<ore:oreIron>     , <pyrotech:generated_slag_iron>     ],
    <minecraft:gold_ingot>          * 2 : [<ore:oreGold>     , <pyrotech:generated_slag_gold>     ],
    <geolosys:ingot>                * 2 : [<ore:oreCopper>   , <pyrotech:generated_slag_copper>   ],
    <geolosys:ingot:1>              * 2 : [<ore:oreTin>      , <pyrotech:generated_slag_tin>      ],
    <geolosys:ingot:2>              * 2 : [<ore:oreSilver>   , <pyrotech:generated_slag_silver>   ],
    <geolosys:ingot:3>              * 2 : [<ore:oreLead>     , <pyrotech:generated_slag_lead>     ],
    <geolosys:ingot:4>              * 2 : [<ore:oreAluminum> , <pyrotech:generated_slag_aluminum> ],
    <geolosys:ingot:5>              * 2 : [<ore:oreNickel>   , <pyrotech:generated_slag_nickel>   ],
    <geolosys:ingot:6>              * 2 : [<ore:orePlatinum> , <pyrotech:slag>                    ],
    <geolosys:ingot:7>              * 2 : [<ore:oreZinc>     , <pyrotech:slag>                    ],
    <immersiveengineering:metal:5>  * 2 : [<ore:oreUranium>  , <pyrotech:generated_slag_uranium>  ],
    <mekanism:ingot:1>              * 2 : [<ore:oreOsmium>   , <pyrotech:generated_slag_osmium>   ],
    <tconstruct:ingots>             * 2 : [<ore:oreCobalt>   , <pyrotech:generated_slag_cobalt>   ],
    <tconstruct:ingots:1>           * 2 : [<ore:oreArdite>   , <pyrotech:generated_slag_ardite>   ],

    // Ore Mixtures
    <mekanism:ingot:2>              * 8 : [<ore:mixtureBronze>       , <pyrotech:slag>            ],
    <immersiveengineering:metal:6>  * 4 : [<ore:mixtureConstantan>   , <pyrotech:slag>            ],
    <immersiveengineering:metal:7>  * 4 : [<ore:mixtureElectrum>     , <pyrotech:slag>            ],
    <plustic:invaringot>            * 6 : [<ore:mixtureInvar>        , <pyrotech:slag>            ],

    // <ore:oreYellorium>

};

val dusts as IItemStack[IIngredient] = {

    <ore:dustIron>          : <minecraft:iron_ingot>              ,
    <ore:dustGold>          : <minecraft:gold_ingot>              ,
    <ore:dustCopper>        : <geolosys:ingot>                    ,
    <ore:dustTin>           : <geolosys:ingot:1>                  ,
    <ore:dustSilver>        : <geolosys:ingot:2>                  ,
    <ore:dustLead>          : <geolosys:ingot:3>                  ,
    <ore:dustAluminum>      : <geolosys:ingot:4>                  ,
    <ore:dustNickel>        : <geolosys:ingot:5>                  ,
    <ore:dustPlatinum>      : <geolosys:ingot:6>                  ,
    <ore:dustZinc>          : <geolosys:ingot:7>                  ,
    <ore:dustUranium>       : <immersiveengineering:metal:5>      ,
    <ore:dustOsmium>        : <mekanism:ingot:1>                  ,
    <ore:dustCobalt>        : <tconstruct:ingots>                 ,
    <ore:dustArdite>        : <tconstruct:ingots:1>               ,

    <ore:dustQuartz>        : <appliedenergistics2:material:5>    ,
    <ore:dustCertusQuartz>  : <appliedenergistics2:material:5>    ,

    <ore:dustHOPGraphite>   : <immersiveengineering:material:19>  ,
    <ore:dustConstantan>    : <immersiveengineering:metal:6>      ,
    <ore:dustElectrum>      : <immersiveengineering:metal:7>      ,
    <ore:dustSteel>         : <immersiveengineering:metal:8>      ,


    // <ore:oreYellorium>
    // <ore:dustLithium>

};

val aloys as IIngredient[][IItemStack] = {

    // Bronze
    <mekanism:ingot:2>              * 4 : [<ore:dustTin>        , <ore:dustCopper>      * 3],
    // Constantan
    <immersiveengineering:metal:6>  * 2 : [<ore:dustCopper>     , <ore:dustNickel>      * 1],
    // Electrum
    <immersiveengineering:metal:7>  * 2 : [<ore:dustGold>       , <ore:dustSilver>      * 1],
    // Invar
    <plustic:invaringot>            * 3 : [<ore:dustNickel>     , <ore:dustIron>        * 2],
    // Aluminum Brass
    <tconstruct:ingots:5>           * 4 : [<ore:dustCopper>     , <ore:dustAluminum>    * 3],
    // Manyullyn
    <tconstruct:ingots:2>           * 1 : [<ore:ingotCobalt>    , <ore:ingotArdite>     * 1],

};

for output, input in commonOres {
    ArcFurnace.addRecipe(output, input[0], input[1].items[0], 200, 512);
}

for input, output in dusts {
    furnace.remove(output);

    ArcFurnace.addRecipe(output, input, null, 100, 512);
    MKSmelter.addRecipe(input, output);
}

for output, input in aloys {
    ArcFurnace.addRecipe(output, input[0], null, 100, 512, [input[1]]);
}


