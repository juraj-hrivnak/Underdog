
#priority 9
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val listOfWoods as IItemStack[][][IOreDictEntry[]] = {

    [<ore:softwoodLumber>, <ore:softwoodLog>, <ore:softwoodPlanks>, <ore:softFirewood>] : [
        // Vanilla
            [<contenttweaker:lumber_vanilla_spruce>          , <minecraft:log:1>        , <minecraft:planks:1>          , <contenttweaker:firewood_spruce>              ],

        // Biomes O Plenty
            [<contenttweaker:lumber_umbran>                  , <biomesoplenty:log_0:6>  , <biomesoplenty:planks_0:2>    , <contenttweaker:firewood_umbran>              ],
            [<contenttweaker:lumber_fir>                     , <biomesoplenty:log_0:7>  , <biomesoplenty:planks_0:3>    , <contenttweaker:firewood_fir>                 ],
            [<contenttweaker:lumber_ethereal>                , <biomesoplenty:log_1:4>  , <biomesoplenty:planks_0:4>    , <contenttweaker:firewood_ethereal>            ],
            [<contenttweaker:lumber_magic>                   , <biomesoplenty:log_1:5>  , <biomesoplenty:planks_0:5>    , <contenttweaker:firewood_magic>               ],
            [<contenttweaker:lumber_redwood>                 , <biomesoplenty:log_2:4>  , <biomesoplenty:planks_0:8>    , <contenttweaker:firewood_redwood>             ],
            [<contenttweaker:lumber_pine>                    , <biomesoplenty:log_2:6>  , <biomesoplenty:planks_0:10>   , <contenttweaker:firewood_pine>                ],

        // Forestry
            [<contenttweaker:lumber_planks.larch>            , <forestry:logs.0>        , <forestry:planks.0>           , <contenttweaker:forestry_firewood_larch>      ],
            [<contenttweaker:lumber_planks.sequoia>          , <forestry:logs.1:3>      , <forestry:planks.0:7>         , <contenttweaker:forestry_firewood_sequoia>    ],
            [<contenttweaker:lumber_planks.kapok>            , <forestry:logs.2>        , <forestry:planks.0:8>         , <contenttweaker:forestry_firewood_kapok>      ],
            [<contenttweaker:lumber_planks.pine>             , <forestry:logs.5>        , <forestry:planks.1:4>         , <contenttweaker:forestry_firewood_pine>       ],
            [<contenttweaker:lumber_planks.giganteum>        , <forestry:logs.6>        , <forestry:planks.1:8>         , <contenttweaker:forestry_firewood_giganteum>  ],

        ],

    [<ore:hardwoodLumber>, <ore:hardwoodLog>, <ore:hardwoodPlanks>, <ore:hardFirewood>] : [
        // Vanilla
            [<contenttweaker:lumber_vanilla_oak>             , <minecraft:log>          , <minecraft:planks>            ,  <contenttweaker:firewood_oak>                ],
            [<contenttweaker:lumber_vanilla_birch>           , <minecraft:log:2>        , <minecraft:planks:2>          ,  <contenttweaker:firewood_birch>              ],
            [<contenttweaker:lumber_vanilla_jungle>          , <minecraft:log:3>        , <minecraft:planks:3>          ,  <contenttweaker:firewood_jungle>             ],
            [<contenttweaker:lumber_vanilla_acacia>          , <minecraft:log2>         , <minecraft:planks:4>          ,  <contenttweaker:firewood_acacia>             ],
            [<contenttweaker:lumber_vanilla_dark_oak>        , <minecraft:log2:1>       , <minecraft:planks:5>          ,  <contenttweaker:firewood_dark_oak>           ],

        // Biomes O Plenty
            [<contenttweaker:lumber_sacred_oak>              , <biomesoplenty:log_0:4>  , <biomesoplenty:planks_0>      ,  <contenttweaker:firewood_sacred_oak>         ],
            [<contenttweaker:lumber_cherry>                  , <biomesoplenty:log_0:5>  , <biomesoplenty:planks_0:1>    ,  <contenttweaker:firewood_cherry>             ],
            [<contenttweaker:lumber_mangrove>                , <biomesoplenty:log_1:6>  , <biomesoplenty:planks_0:6>    ,  <contenttweaker:firewood_mangrove>           ],
            [<contenttweaker:lumber_willow>                  , <biomesoplenty:log_2:5>  , <biomesoplenty:planks_0:9>    ,  <contenttweaker:firewood_willow>             ],
            [<contenttweaker:lumber_hellbark>                , <biomesoplenty:log_2:7>  , <biomesoplenty:planks_0:11>   ,  <contenttweaker:firewood_hellbark>           ],
            [<contenttweaker:lumber_jacaranda>               , <biomesoplenty:log_3:4>  , <biomesoplenty:planks_0:12>   ,  <contenttweaker:firewood_jacaranda>          ],
            [<contenttweaker:lumber_mahogany>                , <biomesoplenty:log_3:5>  , <biomesoplenty:planks_0:13>   ,  <contenttweaker:firewood_mahogany>           ],
            [<contenttweaker:lumber_ebony>                   , <biomesoplenty:log_3:6>  , <biomesoplenty:planks_0:14>   ,  <contenttweaker:firewood_ebony>              ],
            [<contenttweaker:lumber_eucalyptus>              , <biomesoplenty:log_3:7>  , <biomesoplenty:planks_0:15>   ,  <contenttweaker:firewood_eucalyptus>         ],

        // Rustic
            [<contenttweaker:lumber_planks_olive>            , <rustic:log>             , <rustic:planks>               ,  <contenttweaker:rustic_firewood_olive>       ],
            [<contenttweaker:lumber_planks_ironwood>         , <rustic:log:1>           , <rustic:planks:1>             ,  <contenttweaker:rustic_firewood_ironwood>    ],

        // Forestry
            [<contenttweaker:lumber_planks.teak>             , <forestry:logs.0:1>      , <forestry:planks.0:1>         , <contenttweaker:forestry_firewood_teak>       ],
            [<contenttweaker:lumber_planks.acacia>           , <forestry:logs.0:2>      , <forestry:planks.0:2>         , <contenttweaker:forestry_firewood_acacia>     ],
            [<contenttweaker:lumber_planks.lime>             , <forestry:logs.0:3>      , <forestry:planks.0:3>         , <contenttweaker:forestry_firewood_lime>       ],
            [<contenttweaker:lumber_planks.chestnut>         , <forestry:logs.1>        , <forestry:planks.0:4>         , <contenttweaker:forestry_firewood_chestnut>   ],
            [<contenttweaker:lumber_planks.wenge>            , <forestry:logs.1:1>      , <forestry:planks.0:5>         , <contenttweaker:forestry_firewood_wenge>      ],
            [<contenttweaker:lumber_planks.ebony>            , <forestry:logs.2:1>      , <forestry:planks.0:9>         , <contenttweaker:forestry_firewood_ebony>      ],
            [<contenttweaker:lumber_planks.mahogany>         , <forestry:logs.2:2>      , <forestry:planks.0:10>        , <contenttweaker:forestry_firewood_mahogany>   ],
            [<contenttweaker:lumber_planks.balsa>            , <forestry:logs.2:3>      , <forestry:planks.0:11>        , <contenttweaker:forestry_firewood_balsa>      ],
            [<contenttweaker:lumber_planks.willow>           , <forestry:logs.3>        , <forestry:planks.0:12>        , <contenttweaker:forestry_firewood_willow>     ],
            [<contenttweaker:lumber_planks.walnut>           , <forestry:logs.3:1>      , <forestry:planks.0:13>        , <contenttweaker:forestry_firewood_walnut>     ],
            [<contenttweaker:lumber_planks.greenheart>       , <forestry:logs.3:2>      , <forestry:planks.0:14>        , <contenttweaker:forestry_firewood_greenheart> ],
            [<contenttweaker:lumber_planks.cherry>           , <forestry:logs.3:3>      , <forestry:planks.0:15>        , <contenttweaker:forestry_firewood_cherry>     ],
            [<contenttweaker:lumber_planks.mahoe>            , <forestry:logs.4>        , <forestry:planks.1>           , <contenttweaker:forestry_firewood_mahoe>      ],
            [<contenttweaker:lumber_planks.poplar>           , <forestry:logs.4:1>      , <forestry:planks.1:1>         , <contenttweaker:forestry_firewood_poplar>     ],
            [<contenttweaker:lumber_planks.plum>             , <forestry:logs.5:1>      , <forestry:planks.1:5>         , <contenttweaker:forestry_firewood_plum>       ],
            [<contenttweaker:lumber_planks.maple>            , <forestry:logs.5:2>      , <forestry:planks.1:6>         , <contenttweaker:forestry_firewood_maple>      ],
            [<contenttweaker:lumber_planks.citrus>           , <forestry:logs.5:3>      , <forestry:planks.1:7>         , <contenttweaker:forestry_firewood_citrus>     ],
            [<contenttweaker:lumber_planks.ipe>              , <forestry:logs.6:1>      , <forestry:planks.1:9>         , <contenttweaker:forestry_firewood_ipe>        ],
            [<contenttweaker:lumber_planks.padauk>           , <forestry:logs.6:2>      , <forestry:planks.1:10>        , <contenttweaker:forestry_firewood_padauk>     ],
            [<contenttweaker:lumber_planks.cocobolo>         , <forestry:logs.6:3>      , <forestry:planks.1:11>        , <contenttweaker:forestry_firewood_cocobolo>   ],
            [<contenttweaker:lumber_planks.zebrawood>        , <forestry:logs.7>        , <forestry:planks.1:12>        , <contenttweaker:forestry_firewood_zebrawood>  ],

        // Cuisine
            [<contenttweaker:cuisine_citrus_lumber>          , <cuisine:log>            , <cuisine:planks>              , <contenttweaker:cuisine_firewood_citrus>      ],

    ],

    [<ore:pseudowoodLumber>, <ore:pseudowoodLog>, <ore:pseudowoodPlanks>, <ore:pseudoFirewood>] : [
        // Biomes O Plenty
            [<contenttweaker:lumber_palm>                    , <biomesoplenty:log_1:7>  , <biomesoplenty:planks_0:7>    , <contenttweaker:firewood_palm>                ],

        // Forestry
            [<contenttweaker:lumber_planks.baobab>           , <forestry:logs.1:2>      , <forestry:planks.0:6>         , <contenttweaker:forestry_firewood_baobab>     ],
            [<contenttweaker:lumber_planks.palm>             , <forestry:logs.4:2>      , <forestry:planks.1:2>         , <contenttweaker:forestry_firewood_palm>       ],
            [<contenttweaker:lumber_planks.papaya>           , <forestry:logs.4:3>      , <forestry:planks.1:3>         , <contenttweaker:forestry_firewood_papaya>     ],
    ]

};

for oredict, items in listOfWoods {
    for i in items {
        oredict[0].add(i[0]);
    }
    for i in items {
        oredict[1].add(i[1]);
    }
    for i in items {
        oredict[2].add(i[2]);
    }
    for i in items {
        oredict[3].add(i[3]);
    }
}

furnace.setFuel(<ore:softwoodLumber>, 80);
furnace.setFuel(<ore:softwoodLog>   , 0);
furnace.setFuel(<ore:softwoodPlanks>, 150);
furnace.setFuel(<ore:softFirewood>  , 105);

furnace.setFuel(<ore:hardwoodLumber>, 120);
furnace.setFuel(<ore:hardwoodLog>   , 0);
furnace.setFuel(<ore:hardwoodPlanks>, 220);
furnace.setFuel(<ore:hardFirewood>  , 205);

furnace.setFuel(<ore:pseudowoodLumber>, 80);
furnace.setFuel(<ore:pseudowoodLog>   , 0);
furnace.setFuel(<ore:pseudowoodPlanks>, 105);
furnace.setFuel(<ore:pseudoFirewood>  , 105);

furnace.setFuel(<minecraft:stick>, 25);

<ore:softwoodLumber>.addShiftTooltip(format.yellow(format.bold("Softwood")));
<ore:softwoodLog>   .addShiftTooltip(format.yellow(format.bold("Softwood")));
<ore:softwoodPlanks>.addShiftTooltip(format.yellow(format.bold("Softwood")));
<ore:softFirewood>  .addShiftTooltip(format.yellow(format.bold("Softwood")));

<ore:hardwoodLumber>.addShiftTooltip(format.yellow(format.bold("Hardwood")));
<ore:hardwoodLog>   .addShiftTooltip(format.yellow(format.bold("Hardwood")));
<ore:hardwoodPlanks>.addShiftTooltip(format.yellow(format.bold("Hardwood")));
<ore:hardFirewood>  .addShiftTooltip(format.yellow(format.bold("Hardwood")));

<ore:pseudowoodLumber>.addShiftTooltip(format.yellow(format.bold("Pseudo Wood")));
<ore:pseudowoodLog>   .addShiftTooltip(format.yellow(format.bold("Pseudo Wood")));
<ore:pseudowoodPlanks>.addShiftTooltip(format.yellow(format.bold("Pseudo Wood")));
<ore:pseudoFirewood>  .addShiftTooltip(format.yellow(format.bold("Pseudo Wood")));

<ore:tooBig>.addAll(<ore:softwoodLog>);
<ore:tooBig>.addAll(<ore:hardwoodLog>);
<ore:tooBig>.addAll(<ore:pseudowoodLog>);
<ore:tooBig>.addShiftTooltip(format.red(format.bold("Big")));

<ore:firewood>.addAll(<ore:softFirewood>);
<ore:firewood>.addAll(<ore:hardFirewood>);
<ore:firewood>.addAll(<ore:pseudoFirewood>);

    // // Rustic Painted Wood
    // <contenttweaker:painted_wood_white_lumber>      , null                     , <rustic:painted_wood_white>
    // <contenttweaker:painted_wood_orange_lumber>     , null                     , <rustic:painted_wood_orange>
    // <contenttweaker:painted_wood_magenta_lumber>    , null                     , <rustic:painted_wood_magenta>
    // <contenttweaker:painted_wood_light_blue_lumber> , null                     , <rustic:painted_wood_light_blue>
    // <contenttweaker:painted_wood_yellow_lumber>     , null                     , <rustic:painted_wood_yellow>
    // <contenttweaker:painted_wood_lime_lumber>       , null                     , <rustic:painted_wood_lime>
    // <contenttweaker:painted_wood_pink_lumber>       , null                     , <rustic:painted_wood_pink>
    // <contenttweaker:painted_wood_gray_lumber>       , null                     , <rustic:painted_wood_gray>
    // <contenttweaker:painted_wood_silver_lumber>     , null                     , <rustic:painted_wood_silver>
    // <contenttweaker:painted_wood_cyan_lumber>       , null                     , <rustic:painted_wood_cyan>
    // <contenttweaker:painted_wood_purple_lumber>     , null                     , <rustic:painted_wood_purple>
    // <contenttweaker:painted_wood_blue_lumber>       , null                     , <rustic:painted_wood_blue>
    // <contenttweaker:painted_wood_brown_lumber>      , null                     , <rustic:painted_wood_brown>
    // <contenttweaker:painted_wood_green_lumber>      , null                     , <rustic:painted_wood_green>
    // <contenttweaker:painted_wood_red_lumber>        , null                     , <rustic:painted_wood_red>
    // <contenttweaker:painted_wood_black_lumber>      , null                     , <rustic:painted_wood_black>

    // // Immersive Engineering
    // <contenttweaker:treated_wood_lumber>            , null                     , <immersiveengineering:treated_wood>

    // // Pyrotech
    // <contenttweaker:tarred_lumber>                  , null                     , <pyrotech:planks_tarred>