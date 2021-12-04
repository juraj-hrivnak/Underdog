
#priority -100
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.mekanism.sawmill as MKSawmill;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.Chopping;

val woodworking as IItemStack[][IItemStack] = {

    // Vanilla
    <contenttweaker:lumber_vanilla_oak>             : [<minecraft:log>          , <minecraft:planks>                    ],
    <contenttweaker:lumber_vanilla_spruce>          : [<minecraft:log:1>        , <minecraft:planks:1>                  ],
    <contenttweaker:lumber_vanilla_birch>           : [<minecraft:log:2>        , <minecraft:planks:2>                  ],
    <contenttweaker:lumber_vanilla_jungle>          : [<minecraft:log:3>        , <minecraft:planks:3>                  ],
    <contenttweaker:lumber_vanilla_acacia>          : [<minecraft:log2>         , <minecraft:planks:4>                  ],
    <contenttweaker:lumber_vanilla_dark_oak>        : [<minecraft:log2:1>       , <minecraft:planks:5>                  ],

    // Biomes O Plenty
    <contenttweaker:lumber_sacred_oak>              : [<biomesoplenty:log_0:4>  , <biomesoplenty:planks_0>              ],
    <contenttweaker:lumber_cherry>                  : [<biomesoplenty:log_0:5>  , <biomesoplenty:planks_0:1>            ],
    <contenttweaker:lumber_umbran>                  : [<biomesoplenty:log_0:6>  , <biomesoplenty:planks_0:2>            ],
    <contenttweaker:lumber_fir>                     : [<biomesoplenty:log_0:7>  , <biomesoplenty:planks_0:3>            ],
    <contenttweaker:lumber_ethereal>                : [<biomesoplenty:log_1:4>  , <biomesoplenty:planks_0:4>            ],
    <contenttweaker:lumber_magic>                   : [<biomesoplenty:log_1:5>  , <biomesoplenty:planks_0:5>            ],
    <contenttweaker:lumber_mangrove>                : [<biomesoplenty:log_1:6>  , <biomesoplenty:planks_0:6>            ],
    <contenttweaker:lumber_palm>                    : [<biomesoplenty:log_1:7>  , <biomesoplenty:planks_0:7>            ],
    <contenttweaker:lumber_redwood>                 : [<biomesoplenty:log_2:4>  , <biomesoplenty:planks_0:8>            ],
    <contenttweaker:lumber_willow>                  : [<biomesoplenty:log_2:5>  , <biomesoplenty:planks_0:9>            ],
    <contenttweaker:lumber_pine>                    : [<biomesoplenty:log_2:6>  , <biomesoplenty:planks_0:10>           ],
    <contenttweaker:lumber_hellbark>                : [<biomesoplenty:log_2:7>  , <biomesoplenty:planks_0:11>           ],
    <contenttweaker:lumber_jacaranda>               : [<biomesoplenty:log_3:4>  , <biomesoplenty:planks_0:12>           ],
    <contenttweaker:lumber_mahogany>                : [<biomesoplenty:log_3:5>  , <biomesoplenty:planks_0:13>           ],
    <contenttweaker:lumber_ebony>                   : [<biomesoplenty:log_3:6>  , <biomesoplenty:planks_0:14>           ],
    <contenttweaker:lumber_eucalyptus>              : [<biomesoplenty:log_3:7>  , <biomesoplenty:planks_0:15>           ],

    // Rustic
    <contenttweaker:lumber_planks_olive>            : [<rustic:log>             , <rustic:planks>                       ],
    <contenttweaker:lumber_planks_ironwood>         : [<rustic:log:1>           , <rustic:planks:1>                     ],

    // Forestry
    <contenttweaker:lumber_planks.larch>            : [<forestry:logs.0>        , <forestry:planks.0>                   ],
    <contenttweaker:lumber_planks.teak>             : [<forestry:logs.0:1>      , <forestry:planks.0:1>                 ],
    <contenttweaker:lumber_planks.acacia>           : [<forestry:logs.0:2>      , <forestry:planks.0:2>                 ],
    <contenttweaker:lumber_planks.lime>             : [<forestry:logs.0:3>      , <forestry:planks.0:3>                 ],
    <contenttweaker:lumber_planks.chestnut>         : [<forestry:logs.1>        , <forestry:planks.0:4>                 ],
    <contenttweaker:lumber_planks.wenge>            : [<forestry:logs.1:1>      , <forestry:planks.0:5>                 ],
    <contenttweaker:lumber_planks.baobab>           : [<forestry:logs.1:2>      , <forestry:planks.0:6>                 ],
    <contenttweaker:lumber_planks.sequoia>          : [<forestry:logs.1:3>      , <forestry:planks.0:7>                 ],
    <contenttweaker:lumber_planks.kapok>            : [<forestry:logs.2>        , <forestry:planks.0:8>                 ],
    <contenttweaker:lumber_planks.ebony>            : [<forestry:logs.2:1>      , <forestry:planks.0:9>                 ],
    <contenttweaker:lumber_planks.mahogany>         : [<forestry:logs.2:2>      , <forestry:planks.0:10>                ],
    <contenttweaker:lumber_planks.balsa>            : [<forestry:logs.2:3>      , <forestry:planks.0:11>                ],
    <contenttweaker:lumber_planks.willow>           : [<forestry:logs.3>        , <forestry:planks.0:12>                ],
    <contenttweaker:lumber_planks.walnut>           : [<forestry:logs.3:1>      , <forestry:planks.0:13>                ],
    <contenttweaker:lumber_planks.greenheart>       : [<forestry:logs.3:2>      , <forestry:planks.0:14>                ],
    <contenttweaker:lumber_planks.cherry>           : [<forestry:logs.3:3>      , <forestry:planks.0:15>                ],
    <contenttweaker:lumber_planks.mahoe>            : [<forestry:logs.4>        , <forestry:planks.1>                   ],
    <contenttweaker:lumber_planks.poplar>           : [<forestry:logs.4:1>      , <forestry:planks.1:1>                 ],
    <contenttweaker:lumber_planks.palm>             : [<forestry:logs.4:2>      , <forestry:planks.1:2>                 ],
    <contenttweaker:lumber_planks.papaya>           : [<forestry:logs.4:3>      , <forestry:planks.1:3>                 ],
    <contenttweaker:lumber_planks.pine>             : [<forestry:logs.5>        , <forestry:planks.1:4>                 ],
    <contenttweaker:lumber_planks.plum>             : [<forestry:logs.5:1>      , <forestry:planks.1:5>                 ],
    <contenttweaker:lumber_planks.maple>            : [<forestry:logs.5:2>      , <forestry:planks.1:6>                 ],
    <contenttweaker:lumber_planks.citrus>           : [<forestry:logs.5:3>      , <forestry:planks.1:7>                 ],
    <contenttweaker:lumber_planks.giganteum>        : [<forestry:logs.6>        , <forestry:planks.1:8>                 ],
    <contenttweaker:lumber_planks.ipe>              : [<forestry:logs.6:1>      , <forestry:planks.1:9>                 ],
    <contenttweaker:lumber_planks.padauk>           : [<forestry:logs.6:2>      , <forestry:planks.1:10>                ],
    <contenttweaker:lumber_planks.cocobolo>         : [<forestry:logs.6:3>      , <forestry:planks.1:11>                ],
    <contenttweaker:lumber_planks.zebrawood>        : [<forestry:logs.7>        , <forestry:planks.1:12>                ],

    // Cuisine
    <contenttweaker:cuisine_citrus_lumber>          : [<cuisine:log>            , <cuisine:planks>                      ],

    // Rustic Painted Wood
    <contenttweaker:painted_wood_white_lumber>      : [null                     , <rustic:painted_wood_white>           ],
    <contenttweaker:painted_wood_orange_lumber>     : [null                     , <rustic:painted_wood_orange>          ],
    <contenttweaker:painted_wood_magenta_lumber>    : [null                     , <rustic:painted_wood_magenta>         ],
    <contenttweaker:painted_wood_light_blue_lumber> : [null                     , <rustic:painted_wood_light_blue>      ],
    <contenttweaker:painted_wood_yellow_lumber>     : [null                     , <rustic:painted_wood_yellow>          ],
    <contenttweaker:painted_wood_lime_lumber>       : [null                     , <rustic:painted_wood_lime>            ],
    <contenttweaker:painted_wood_pink_lumber>       : [null                     , <rustic:painted_wood_pink>            ],
    <contenttweaker:painted_wood_gray_lumber>       : [null                     , <rustic:painted_wood_gray>            ],
    <contenttweaker:painted_wood_silver_lumber>     : [null                     , <rustic:painted_wood_silver>          ],
    <contenttweaker:painted_wood_cyan_lumber>       : [null                     , <rustic:painted_wood_cyan>            ],
    <contenttweaker:painted_wood_purple_lumber>     : [null                     , <rustic:painted_wood_purple>          ],
    <contenttweaker:painted_wood_blue_lumber>       : [null                     , <rustic:painted_wood_blue>            ],
    <contenttweaker:painted_wood_brown_lumber>      : [null                     , <rustic:painted_wood_brown>           ],
    <contenttweaker:painted_wood_green_lumber>      : [null                     , <rustic:painted_wood_green>           ],
    <contenttweaker:painted_wood_red_lumber>        : [null                     , <rustic:painted_wood_red>             ],
    <contenttweaker:painted_wood_black_lumber>      : [null                     , <rustic:painted_wood_black>           ],

    // Immersive Engineering
    <contenttweaker:treated_wood_lumber>            : [null                     , <immersiveengineering:treated_wood>   ],

    // Pyrotech
    <contenttweaker:tarred_lumber>                  : [null                     , <pyrotech:planks_tarred>              ],
    
};

val woodenNail = <contenttweaker:nail_wooden>;
val ironNail = <contenttweaker:nail_iron>;

for lumber, x in woodworking {

    var log = x[0];
    var planks = x[1];

    val sawmillBlades = <pyrotech:sawmill_blade_obsidian:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_iron:*>;


    if !isNull(log) {

        // Adding recipe for 8 lumbers with "raw: true" tag from one log
        Chopping.addRecipe("chopping_" + log.displayName + log.definition.owner, lumber.withTag({raw: true}), log, [4], [8]);

        // Adding tooltip for lumber with "raw: true" tag
        lumber.onlyWithTag({raw: true}).addTooltip(format.gray(format.bold("Raw")));

        MKSawmill.addRecipe(log, lumber.withTag({raw: true}) * 8, <pyrotech:rock:7>, 0.5);
        BrickSawmill.addRecipe("lumber_from_" + log.displayName + log.definition.owner, lumber.withTag({raw: true}) * 8, log, 200, sawmillBlades, 1);
    }

    // Adding "plankWood" oredict to lumber
    <ore:lumber>.add(lumber);

    // Removing default recipes for planks
    recipes.remove(planks);

    // Replacing all the planks with the right lumbers
    recipes.replaceAllOccurences(planks, lumber, <*>);

    // Adding recipe for lumber from planks
    recipes.addShapeless(lumber * 2, [planks]);

    // Adding recipe for planks block from four lumbers
    recipes.addShapedMirrored("_wooden_nail_2x_" + planks.displayName + planks.definition.owner, planks * 2,
    [[null      , woodenNail, woodenNail ],
     [woodenNail, lumber    , lumber     ],
     [woodenNail, lumber    , lumber     ]]);

    // Adding bunus recipe for using "raw" lumber with iron nails
    recipes.addHiddenShaped("_iron_nail_4x_" + planks.displayName + planks.definition.owner, planks * 4,
    [[null    , null                           , ironNail                        ],
     [null    , lumber.onlyWithTag({raw: true}), lumber.onlyWithTag({raw: true}) ],
     [ironNail, lumber.onlyWithTag({raw: true}), lumber.onlyWithTag({raw: true}) ]],
    null, function(out,cInfo,player) { 
        player.xp += 1;
        server.commandManager.executeCommand(server, "/playsound tconstruct:wood_hit block @a " + player.x + " " + player.y + " " + player.z);
    }, true);

    recipes.addShapedMirrored("_iron_nail_2x_" + planks.displayName + planks.definition.owner, planks * 2,
    [[null    , null  , ironNail ],
     [null    , lumber, lumber   ],
     [ironNail, lumber, lumber   ]]);

    MKSawmill.addRecipe(planks, lumber * 2);
    BrickSawmill.addRecipe("lumber_from_" + planks.displayName + planks.definition.owner, lumber * 2, planks, 200, sawmillBlades, 0);
}

Chopping.addRecipe("chopping_nail", woodenNail, <ore:hardwoodLumber>, [1], [2]);