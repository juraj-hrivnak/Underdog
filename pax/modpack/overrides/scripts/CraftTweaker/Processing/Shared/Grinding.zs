
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.mekanism.crusher as MKCrusher;
// import mods.cuisine.Mill as Mill;

val clusters as IOreDictEntry[IItemStack] = {

    <geolosys:cluster>      : <ore:oreIron>,
    <geolosys:cluster:1>    : <ore:oreGold>,
    <geolosys:cluster:2>    : <ore:oreCopper>,
    <geolosys:cluster:3>    : <ore:oreTin>,
    <geolosys:cluster:4>    : <ore:oreSilver>,
    <geolosys:cluster:5>    : <ore:oreLead>,
    <geolosys:cluster:6>    : <ore:oreAluminum>,
    <geolosys:cluster:7>    : <ore:oreNickel>,
    <geolosys:cluster:8>    : <ore:orePlatinum>,
    <geolosys:cluster:9>    : <ore:oreUranium>,
    <geolosys:cluster:10>   : <ore:oreZinc>,
    <geolosys:cluster:11>   : <ore:oreYellorium>,
    <geolosys:cluster:12>   : <ore:oreOsmium>

};

val grinding as IItemStack[][IOreDictEntry] = {

//  IIngredient input,            IItemStack output,                          IItemStack secondaryOutput
    <ore:oreIron>               : [<immersiveengineering:metal:18>       * 2, <immersiveengineering:metal:13>       ],
    <ore:oreGold>               : [<immersiveengineering:metal:19>       * 2, null                                  ],

    <ore:oreCopper>             : [<immersiveengineering:metal:9>        * 2, <immersiveengineering:metal:19>       ],
    <ore:oreTin>                : [<mekanism:dust:4>                     * 2, null                                  ],
    <ore:oreSilver>             : [<immersiveengineering:metal:12>       * 2, <immersiveengineering:metal:11>       ],
    <ore:oreLead>               : [<immersiveengineering:metal:11>       * 2, <immersiveengineering:metal:12>       ],
    <ore:oreAluminum>           : [<immersiveengineering:metal:10>       * 2, null                                  ],
    <ore:oreNickel>             : [<immersiveengineering:metal:13>       * 2, null                                  ],
    <ore:oreUranium>            : [<immersiveengineering:metal:14>       * 2, <immersiveengineering:metal:11>       ],
    <ore:oreOsmium>             : [<mekanism:dust:2>                     * 2, null                                  ],

    <ore:orePyrite>             : [<minecraft:blaze_powder>              * 2, <immersiveengineering:metal:18>       ],

    <ore:blockFuelCoke>         : [<immersiveengineering:material:17>    * 9, null                                  ],
    <ore:fuelCoke>              : [<immersiveengineering:material:17>       , null                                  ],

    <ore:crystalCertusQuartz>   : [<appliedenergistics2:material:2>         , null                                  ],
    <ore:enderpearl>            : [<appliedenergistics2:material:46>        , null                                  ],
    <ore:crystalFluix>          : [<appliedenergistics2:material:8>         , null                                  ],
    <ore:gemQuartz>             : [<appliedenergistics2:material:3>         , null                                  ],
    <ore:meteorite>             : [<appliedenergistics2:material:45>        , null                                  ],


    <ore:ingotIron>             : [<immersiveengineering:metal:18>          , null                                  ],
    <ore:ingotGold>             : [<immersiveengineering:metal:19>          , null                                  ],

    <ore:ingotCopper>           : [<immersiveengineering:metal:9>           , null                                  ],
    <ore:ingotTin>              : [<mekanism:dust:4>                        , null                                  ],
    <ore:ingotSilver>           : [<immersiveengineering:metal:12>          , null                                  ],
    <ore:ingotLead>             : [<immersiveengineering:metal:11>          , null                                  ],
    <ore:ingotAluminum>         : [<immersiveengineering:metal:10>          , null                                  ],
    <ore:ingotNickel>           : [<immersiveengineering:metal:13>          , null                                  ],
    <ore:ingotUranium>          : [<immersiveengineering:metal:14>          , null                                  ],
    <ore:ingotOsmium>           : [<mekanism:dust:2>                        , null                                  ],

    <ore:ingotHOPGraphite>      : [<immersiveengineering:material:18>       , null                                  ],
    <ore:ingotConstantan>       : [<immersiveengineering:metal:15>          , null                                  ],
    <ore:ingotElectrum>         : [<immersiveengineering:metal:16>          , null                                  ],
    <ore:ingotSteel>            : [<immersiveengineering:metal:17>          , null                                  ],

    <ore:gemDiamond>            : [<mekanism:otherdust>                     , null                                  ],


    <ore:cobblestone>           : [<minecraft:gravel>                       , null                                  ],
    <ore:gravel>                : [<minecraft:sand>                         , null                                  ],
    <ore:obsidian>              : [<mekanism:otherdust:6>                * 4, null                                  ],
    <ore:sand>                  : [<pyrotech:rock:5>                     * 8, <immersiveengineering:material:24>    ],

    <ore:blockGlassColorless>   : [<quark:glass_shards>                  * 4, null                                  ],
    <ore:blockGlassWhite>       : [<quark:glass_shards:1>                * 4, null                                  ],
    <ore:blockGlassOrange>      : [<quark:glass_shards:2>                * 4, null                                  ],
    <ore:blockGlassMagenta>     : [<quark:glass_shards:3>                * 4, null                                  ],
    <ore:blockGlassLightBlue>   : [<quark:glass_shards:4>                * 4, null                                  ],
    <ore:blockGlassYellow>      : [<quark:glass_shards:5>                * 4, null                                  ],
    <ore:blockGlassLime>        : [<quark:glass_shards:6>                * 4, null                                  ],
    <ore:blockGlassPink>        : [<quark:glass_shards:7>                * 4, null                                  ],
    <ore:blockGlassGray>        : [<quark:glass_shards:8>                * 4, null                                  ],
    <ore:blockGlassLightGray>   : [<quark:glass_shards:9>                * 4, null                                  ],
    <ore:blockGlassCyan>        : [<quark:glass_shards:10>               * 4, null                                  ],
    <ore:blockGlassPurple>      : [<quark:glass_shards:11>               * 4, null                                  ],
    <ore:blockGlassBlue>        : [<quark:glass_shards:12>               * 4, null                                  ],
    <ore:blockGlassBrown>       : [<quark:glass_shards:13>               * 4, null                                  ],
    <ore:blockGlassGreen>       : [<quark:glass_shards:14>               * 4, null                                  ],
    <ore:blockGlassRed>         : [<quark:glass_shards:15>               * 4, null                                  ],
    <ore:blockGlassBlack>       : [<quark:glass_shards:16>               * 4, null                                  ],
    <ore:shardGlass>            : [<pyrotech:rock:5>                     * 2, null                                  ],

    <ore:woolWhite>             : [<minecraft:string>                    * 4, <minecraft:dye:15>                    ],
    <ore:woolOrange>            : [<minecraft:string>                    * 4, <minecraft:dye:14>                    ],
    <ore:woolMagenta>           : [<minecraft:string>                    * 4, <minecraft:dye:13>                    ],
    <ore:woolLightBlue>         : [<minecraft:string>                    * 4, <minecraft:dye:12>                    ],
    <ore:woolYellow>            : [<minecraft:string>                    * 4, <minecraft:dye:11>                    ],
    <ore:woolLime>              : [<minecraft:string>                    * 4, <minecraft:dye:10>                    ],
    <ore:woolPink>              : [<minecraft:string>                    * 4, <minecraft:dye:9>                     ],
    <ore:woolGray>              : [<minecraft:string>                    * 4, <minecraft:dye:8>                     ],
    <ore:woolLightGray>         : [<minecraft:string>                    * 4, <minecraft:dye:7>                     ],
    <ore:woolCyan>              : [<minecraft:string>                    * 4, <minecraft:dye:6>                     ],
    <ore:woolPurple>            : [<minecraft:string>                    * 4, <minecraft:dye:5>                     ],
    <ore:woolBlue>              : [<minecraft:string>                    * 4, <minecraft:dye:4>                     ],
    <ore:woolBrown>             : [<minecraft:string>                    * 4, <minecraft:dye:3>                     ],
    <ore:woolGreen>             : [<minecraft:string>                    * 4, <minecraft:dye:2>                     ],
    <ore:woolRed>               : [<minecraft:string>                    * 4, <minecraft:dye:1>                     ],
    <ore:woolBlack>             : [<minecraft:string>                    * 4, <minecraft:dye>                       ],

    <ore:clumpIron>             : [<mekanism:dirtydust>                     , null                                  ],
    <ore:clumpGold>             : [<mekanism:dirtydust:1>                   , null                                  ],
    <ore:clumpOsmium>           : [<mekanism:dirtydust:2>                   , null                                  ],
    <ore:clumpCopper>           : [<mekanism:dirtydust:3>                   , null                                  ],
    <ore:clumpTin>              : [<mekanism:dirtydust:4>                   , null                                  ],
    <ore:clumpSilver>           : [<mekanism:dirtydust:5>                   , null                                  ],
    <ore:clumpLead>             : [<mekanism:dirtydust:6>                   , null                                  ],

    <ore:bone>                  : [<minecraft:dye:15>                    * 4, <minecraft:dye:15>                    ],

    // <ore:orePlatinum>       :
    // <ore:oreZinc>           :
    // <ore:oreYellorium>      :
};

for input, output in grinding {

    MKCrusher.addRecipe(input, output[0]);

    IECrusher.addRecipe(output[0], input, 6000, output[1], 0.3);

    // Mill.add(input, null, output[0], null);

}
