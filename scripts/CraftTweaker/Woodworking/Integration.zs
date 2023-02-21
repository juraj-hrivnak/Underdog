
#priority -100
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.primitivecrafting as Primitive;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.mekanism.sawmill as MKSawmill;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.Chopping;
import mods.contenttweaker.Commands;
import mods.zenutils.StaticString;

import scripts.CraftTweaker.Utils.RecipeUtils.getNameForRecipe;

val woodworking as IItemStack[][IItemStack] = {

    // Vanilla
    <contenttweaker:lumber_vanilla_oak>             : [<minecraft:log>          , <minecraft:planks>                    , <minecraft:wooden_slab>                   , <debark:debarked_log_minecraft_log>           ],
    <contenttweaker:lumber_vanilla_spruce>          : [<minecraft:log:1>        , <minecraft:planks:1>                  , <minecraft:wooden_slab:1>                 , <debark:debarked_log_minecraft_log:1>         ],
    <contenttweaker:lumber_vanilla_birch>           : [<minecraft:log:2>        , <minecraft:planks:2>                  , <minecraft:wooden_slab:2>                 , <debark:debarked_log_minecraft_log:3>         ],
    <contenttweaker:lumber_vanilla_jungle>          : [<minecraft:log:3>        , <minecraft:planks:3>                  , <minecraft:wooden_slab:3>                 , <debark:debarked_log_minecraft_log:2>         ],
    <contenttweaker:lumber_vanilla_acacia>          : [<minecraft:log2>         , <minecraft:planks:4>                  , <minecraft:wooden_slab:4>                 , <debark:debarked_log_minecraft_log2>          ],
    <contenttweaker:lumber_vanilla_dark_oak>        : [<minecraft:log2:1>       , <minecraft:planks:5>                  , <minecraft:wooden_slab:5>                 , <debark:debarked_log_minecraft_log2:1>        ],

    // Biomes O Plenty
    <contenttweaker:lumber_sacred_oak>              : [<biomesoplenty:log_0:4>  , <biomesoplenty:planks_0>              , <biomesoplenty:wood_slab_0>               , <debark:debarked_log_biomesoplenty_log_0>     ],
    <contenttweaker:lumber_cherry>                  : [<biomesoplenty:log_0:5>  , <biomesoplenty:planks_0:1>            , <biomesoplenty:wood_slab_0:1>             , <debark:debarked_log_biomesoplenty_log_0:1>   ],
    <contenttweaker:lumber_umbran>                  : [<biomesoplenty:log_0:6>  , <biomesoplenty:planks_0:2>            , <biomesoplenty:wood_slab_0:2>             , <debark:debarked_log_biomesoplenty_log_0:2>   ],
    <contenttweaker:lumber_fir>                     : [<biomesoplenty:log_0:7>  , <biomesoplenty:planks_0:3>            , <biomesoplenty:wood_slab_0:3>             , <debark:debarked_log_biomesoplenty_log_0:3>   ],
    <contenttweaker:lumber_ethereal>                : [<biomesoplenty:log_1:4>  , <biomesoplenty:planks_0:4>            , <biomesoplenty:wood_slab_0:4>             , <debark:debarked_log_biomesoplenty_log_1>     ],
    <contenttweaker:lumber_magic>                   : [<biomesoplenty:log_1:5>  , <biomesoplenty:planks_0:5>            , <biomesoplenty:wood_slab_0:5>             , <debark:debarked_log_biomesoplenty_log_1:1>   ],
    <contenttweaker:lumber_mangrove>                : [<biomesoplenty:log_1:6>  , <biomesoplenty:planks_0:6>            , <biomesoplenty:wood_slab_0:6>             , <debark:debarked_log_biomesoplenty_log_1:2>   ],
    <contenttweaker:lumber_palm>                    : [<biomesoplenty:log_1:7>  , <biomesoplenty:planks_0:7>            , <biomesoplenty:wood_slab_0:7>             , <debark:debarked_log_biomesoplenty_log_1:3>   ],
    <contenttweaker:lumber_redwood>                 : [<biomesoplenty:log_2:4>  , <biomesoplenty:planks_0:8>            , <biomesoplenty:wood_slab_1>               , <debark:debarked_log_biomesoplenty_log_2>     ],
    <contenttweaker:lumber_willow>                  : [<biomesoplenty:log_2:5>  , <biomesoplenty:planks_0:9>            , <biomesoplenty:wood_slab_1:1>             , <debark:debarked_log_biomesoplenty_log_2:1>   ],
    <contenttweaker:lumber_pine>                    : [<biomesoplenty:log_2:6>  , <biomesoplenty:planks_0:10>           , <biomesoplenty:wood_slab_1:2>             , <debark:debarked_log_biomesoplenty_log_2:2>   ],
    <contenttweaker:lumber_hellbark>                : [<biomesoplenty:log_2:7>  , <biomesoplenty:planks_0:11>           , <biomesoplenty:wood_slab_1:3>             , <debark:debarked_log_biomesoplenty_log_2:3>   ],
    <contenttweaker:lumber_jacaranda>               : [<biomesoplenty:log_3:4>  , <biomesoplenty:planks_0:12>           , <biomesoplenty:wood_slab_1:4>             , <debark:debarked_log_biomesoplenty_log_3>     ],
    <contenttweaker:lumber_mahogany>                : [<biomesoplenty:log_3:5>  , <biomesoplenty:planks_0:13>           , <biomesoplenty:wood_slab_1:5>             , <debark:debarked_log_biomesoplenty_log_3:1>   ],
    <contenttweaker:lumber_ebony>                   : [<biomesoplenty:log_3:6>  , <biomesoplenty:planks_0:14>           , <biomesoplenty:wood_slab_1:6>             , <debark:debarked_log_biomesoplenty_log_3:2>   ],
    <contenttweaker:lumber_eucalyptus>              : [<biomesoplenty:log_3:7>  , <biomesoplenty:planks_0:15>           , <biomesoplenty:wood_slab_1:7>             , <debark:debarked_log_biomesoplenty_log_3:3>   ],

    // Rustic
    <contenttweaker:lumber_planks_olive>            : [<rustic:log>             , <rustic:planks>                       , <rustic:olive_slab_item>                  , <debark:debarked_log_rustic_log>              ],
    <contenttweaker:lumber_planks_ironwood>         : [<rustic:log:1>           , <rustic:planks:1>                     , <rustic:ironwood_slab_item>               , <debark:debarked_log_rustic_log:1>            ],

    // Forestry
    <contenttweaker:lumber_planks.larch>            : [<forestry:logs.0>        , <forestry:planks.0>                   , <forestry:slabs.0>                        , <debark:debarked_log_forestry_logs_0>         ],
    <contenttweaker:lumber_planks.teak>             : [<forestry:logs.0:1>      , <forestry:planks.0:1>                 , <forestry:slabs.0:1>                      , <debark:debarked_log_forestry_logs_0:1>       ],
    <contenttweaker:lumber_planks.acacia>           : [<forestry:logs.0:2>      , <forestry:planks.0:2>                 , <forestry:slabs.0:2>                      , <debark:debarked_log_forestry_logs_0:2>       ],
    <contenttweaker:lumber_planks.lime>             : [<forestry:logs.0:3>      , <forestry:planks.0:3>                 , <forestry:slabs.0:3>                      , <debark:debarked_log_forestry_logs_0:3>       ],
    <contenttweaker:lumber_planks.chestnut>         : [<forestry:logs.1>        , <forestry:planks.0:4>                 , <forestry:slabs.0:4>                      , <debark:debarked_log_forestry_logs_1>         ],
    <contenttweaker:lumber_planks.wenge>            : [<forestry:logs.1:1>      , <forestry:planks.0:5>                 , <forestry:slabs.0:5>                      , <debark:debarked_log_forestry_logs_1:1>       ],
    <contenttweaker:lumber_planks.baobab>           : [<forestry:logs.1:2>      , <forestry:planks.0:6>                 , <forestry:slabs.0:6>                      , <debark:debarked_log_forestry_logs_1:2>       ],
    <contenttweaker:lumber_planks.sequoia>          : [<forestry:logs.1:3>      , <forestry:planks.0:7>                 , <forestry:slabs.0:7>                      , <debark:debarked_log_forestry_logs_1:3>       ],
    <contenttweaker:lumber_planks.kapok>            : [<forestry:logs.2>        , <forestry:planks.0:8>                 , <forestry:slabs.1>                        , <debark:debarked_log_forestry_logs_2>         ],
    <contenttweaker:lumber_planks.ebony>            : [<forestry:logs.2:1>      , <forestry:planks.0:9>                 , <forestry:slabs.1:1>                      , <debark:debarked_log_forestry_logs_2:1>       ],
    <contenttweaker:lumber_planks.mahogany>         : [<forestry:logs.2:2>      , <forestry:planks.0:10>                , <forestry:slabs.1:2>                      , <debark:debarked_log_forestry_logs_2:2>       ],
    <contenttweaker:lumber_planks.balsa>            : [<forestry:logs.2:3>      , <forestry:planks.0:11>                , <forestry:slabs.1:3>                      , <debark:debarked_log_forestry_logs_2:3>       ],
    <contenttweaker:lumber_planks.willow>           : [<forestry:logs.3>        , <forestry:planks.0:12>                , <forestry:slabs.1:4>                      , <debark:debarked_log_forestry_logs_3>         ],
    <contenttweaker:lumber_planks.walnut>           : [<forestry:logs.3:1>      , <forestry:planks.0:13>                , <forestry:slabs.1:5>                      , <debark:debarked_log_forestry_logs_3:1>       ],
    <contenttweaker:lumber_planks.greenheart>       : [<forestry:logs.3:2>      , <forestry:planks.0:14>                , <forestry:slabs.1:6>                      , <debark:debarked_log_forestry_logs_3:2>       ],
    <contenttweaker:lumber_planks.cherry>           : [<forestry:logs.3:3>      , <forestry:planks.0:15>                , <forestry:slabs.1:7>                      , <debark:debarked_log_forestry_logs_3:3>       ],
    <contenttweaker:lumber_planks.mahoe>            : [<forestry:logs.4>        , <forestry:planks.1>                   , <forestry:slabs.2>                        , <debark:debarked_log_forestry_logs_4>         ],
    <contenttweaker:lumber_planks.poplar>           : [<forestry:logs.4:1>      , <forestry:planks.1:1>                 , <forestry:slabs.2:1>                      , <debark:debarked_log_forestry_logs_4:1>       ],
    <contenttweaker:lumber_planks.palm>             : [<forestry:logs.4:2>      , <forestry:planks.1:2>                 , <forestry:slabs.2:2>                      , <debark:debarked_log_forestry_logs_4:2>       ],
    <contenttweaker:lumber_planks.papaya>           : [<forestry:logs.4:3>      , <forestry:planks.1:3>                 , <forestry:slabs.2:3>                      , <debark:debarked_log_forestry_logs_4:3>       ],
    <contenttweaker:lumber_planks.pine>             : [<forestry:logs.5>        , <forestry:planks.1:4>                 , <forestry:slabs.2:4>                      , <debark:debarked_log_forestry_logs_5>         ],
    <contenttweaker:lumber_planks.plum>             : [<forestry:logs.5:1>      , <forestry:planks.1:5>                 , <forestry:slabs.2:5>                      , <debark:debarked_log_forestry_logs_5:1>       ],
    <contenttweaker:lumber_planks.maple>            : [<forestry:logs.5:2>      , <forestry:planks.1:6>                 , <forestry:slabs.2:6>                      , <debark:debarked_log_forestry_logs_5:2>       ],
    <contenttweaker:lumber_planks.citrus>           : [<forestry:logs.5:3>      , <forestry:planks.1:7>                 , <forestry:slabs.2:7>                      , <debark:debarked_log_forestry_logs_5:3>       ],
    <contenttweaker:lumber_planks.giganteum>        : [<forestry:logs.6>        , <forestry:planks.1:8>                 , <forestry:slabs.3>                        , <debark:debarked_log_forestry_logs_6>         ],
    <contenttweaker:lumber_planks.ipe>              : [<forestry:logs.6:1>      , <forestry:planks.1:9>                 , <forestry:slabs.3:1>                      , <debark:debarked_log_forestry_logs_6:1>       ],
    <contenttweaker:lumber_planks.padauk>           : [<forestry:logs.6:2>      , <forestry:planks.1:10>                , <forestry:slabs.3:2>                      , <debark:debarked_log_forestry_logs_6:2>       ],
    <contenttweaker:lumber_planks.cocobolo>         : [<forestry:logs.6:3>      , <forestry:planks.1:11>                , <forestry:slabs.3:3>                      , <debark:debarked_log_forestry_logs_6:3>       ],
    <contenttweaker:lumber_planks.zebrawood>        : [<forestry:logs.7>        , <forestry:planks.1:12>                , <forestry:slabs.3:4>                      , null                                          ],

    // Cuisine
    <contenttweaker:cuisine_citrus_lumber>          : [<cuisine:log>            , <cuisine:planks>                      , null                                      , null                                          ],

    // Rustic Painted Wood
    <contenttweaker:painted_wood_white_lumber>      : [null                     , <rustic:painted_wood_white>           , null                                      , null                                          ],
    <contenttweaker:painted_wood_orange_lumber>     : [null                     , <rustic:painted_wood_orange>          , null                                      , null                                          ],
    <contenttweaker:painted_wood_magenta_lumber>    : [null                     , <rustic:painted_wood_magenta>         , null                                      , null                                          ],
    <contenttweaker:painted_wood_light_blue_lumber> : [null                     , <rustic:painted_wood_light_blue>      , null                                      , null                                          ],
    <contenttweaker:painted_wood_yellow_lumber>     : [null                     , <rustic:painted_wood_yellow>          , null                                      , null                                          ],
    <contenttweaker:painted_wood_lime_lumber>       : [null                     , <rustic:painted_wood_lime>            , null                                      , null                                          ],
    <contenttweaker:painted_wood_pink_lumber>       : [null                     , <rustic:painted_wood_pink>            , null                                      , null                                          ],
    <contenttweaker:painted_wood_gray_lumber>       : [null                     , <rustic:painted_wood_gray>            , null                                      , null                                          ],
    <contenttweaker:painted_wood_silver_lumber>     : [null                     , <rustic:painted_wood_silver>          , null                                      , null                                          ],
    <contenttweaker:painted_wood_cyan_lumber>       : [null                     , <rustic:painted_wood_cyan>            , null                                      , null                                          ],
    <contenttweaker:painted_wood_purple_lumber>     : [null                     , <rustic:painted_wood_purple>          , null                                      , null                                          ],
    <contenttweaker:painted_wood_blue_lumber>       : [null                     , <rustic:painted_wood_blue>            , null                                      , null                                          ],
    <contenttweaker:painted_wood_brown_lumber>      : [null                     , <rustic:painted_wood_brown>           , null                                      , null                                          ],
    <contenttweaker:painted_wood_green_lumber>      : [null                     , <rustic:painted_wood_green>           , null                                      , null                                          ],
    <contenttweaker:painted_wood_red_lumber>        : [null                     , <rustic:painted_wood_red>             , null                                      , null                                          ],
    <contenttweaker:painted_wood_black_lumber>      : [null                     , <rustic:painted_wood_black>           , null                                      , null                                          ],

    // Immersive Engineering
    <contenttweaker:treated_wood_lumber>            : [null                     , <immersiveengineering:treated_wood>   , <immersiveengineering:treated_wood_slab>  , null                                          ],

    // Pyrotech
    <contenttweaker:tarred_lumber>                  : [null                     , <pyrotech:planks_tarred>              , null                                      , null                                          ],

};

recipes.remove(<charset:chest:*>);

val woodenNail = <contenttweaker:nail_wooden>;
val ironNail = <contenttweaker:nail_iron>;
val sawmillBlades =
      <pyrotech:sawmill_blade_stone:*>
    | <pyrotech:sawmill_blade_flint:*>
    | <pyrotech:sawmill_blade_bone:*>
    | <pyrotech:sawmill_blade_iron:*>
    | <pyrotech:sawmill_blade_gold:*>
    | <pyrotech:sawmill_blade_diamond:*>
    | <pyrotech:sawmill_blade_obsidian:*>;

for lumber, x in woodworking {

    var log = x[0];
    var planks = x[1];
    var slab = x[2];
    var debarkedLog = x[3];

    // Raw Lumber
    val rawLumber = lumber.withTag({raw: true});

    // Adding tooltip for lumber with "raw: true" tag
    rawLumber.addTooltip(format.gray(format.bold("Raw")));


    // Recipes for logs
    if (!isNull(log)) {

        // Adding recipe for 8 lumbers with "raw: true" tag from one log
        Chopping.addRecipe(getNameForRecipe([lumber * 8]), rawLumber, log, [1], [8]);

        MKSawmill.addRecipe(log, rawLumber * 8, <pyrotech:rock:7>, 0.5);
        StoneSawmill.addRecipe(getNameForRecipe([lumber * 8]), rawLumber * 8, log, 300, sawmillBlades, 1);
        BrickSawmill.addRecipe(getNameForRecipe([lumber * 8]), rawLumber * 8, log, 60, sawmillBlades, 1);
    }

    // Recipes for slabs
    if (!isNull(slab)) {

        // Removing default recipes for slabs
        recipes.remove(slab);

        // Adding recipes for slabs
        recipes.addShaped(slab * 2,
           [[lumber, lumber ]]);

        Primitive.addRecipe(slab * 2, lumber, lumber);

        // Adding recipes for planks from slabs
        recipes.addShaped(planks,
           [[slab ],
            [slab ]]);

        Primitive.addRecipe(planks, slab, slab);

        // Adding recipes for lumber from slab
        recipes.addShapeless(lumber, [slab]);
    }

    // Recipes for debarked logs
    if (!isNull(debarkedLog)) {

        // Adding recipe for 8 lumbers with "raw: true" tag from one log
        Chopping.addRecipe(getNameForRecipe([lumber * 8]) ~"_debarked", rawLumber, debarkedLog, [1], [8]);

        MKSawmill.addRecipe(debarkedLog, rawLumber * 8, <pyrotech:rock:7>, 0.5);
        StoneSawmill.addRecipe(getNameForRecipe([lumber * 8]) ~"_debarked", rawLumber * 8, debarkedLog, 300, sawmillBlades, 1);
        BrickSawmill.addRecipe(getNameForRecipe([lumber * 8]) ~"_debarked", rawLumber * 8, debarkedLog, 60, sawmillBlades, 1);
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
    recipes.addShaped(getNameForRecipe([planks * 2]), planks * 2,
      [[lumber, lumber ],
       [lumber, lumber ]]);

    // Adding bunus recipe for using "raw" lumber with iron nails
    recipes.addShapedMirrored(getNameForRecipe([planks * 4]) ~ "_x4_iron_nails", planks * 4,
       [[null    , null     , ironNail  ],
        [null    , rawLumber, rawLumber ],
        [ironNail, rawLumber, rawLumber ]]);

    // Adding recipe for lumber with iron nails
    recipes.addHiddenShaped(getNameForRecipe([planks * 2]) ~ "_x2_iron_nails", planks * 2,
       [[null    , null  , ironNail ],
        [null    , lumber, lumber   ],
        [ironNail, lumber, lumber   ]],
        null, null, true // Mirrored
    );

    MKSawmill.addRecipe(planks, lumber * 2);
    StoneSawmill.addRecipe(getNameForRecipe([lumber * 2]), lumber * 2, planks, 200, sawmillBlades, 0);
    BrickSawmill.addRecipe(getNameForRecipe([lumber * 2]), lumber * 2, planks, 20, sawmillBlades, 0);

    // Chests recipes
    if (planks.metadata == 0) {
		recipes.addShaped(getNameForRecipe([planks]) ~ "_chest", <charset:chest>
			.withTag({wood: toString(planks)
				.replace("<", "")
				.replace(">", ";0")
				.replace(":", ";")
				.replace(planks.definition.owner + ";", planks.definition.owner + ":")}),
           [[lumber, lumber, lumber ],
            [lumber, null  , lumber ],
            [lumber, lumber, lumber ]]);
        mods.jei.JEI.addItem(<charset:chest>.withTag({wood: toString(planks).replace("<", "").replace(">", ";0").replace(":", ";").replace(planks.definition.owner + ";", planks.definition.owner + ":")}));
	} else {
		recipes.addShaped(getNameForRecipe([planks]) ~ "_chest", <charset:chest>
			.withTag({wood: toString(planks)
				.replace("<", "")
				.replace(">", "")
				.replace(":", ";")
				.replace(planks.definition.owner + ";", planks.definition.owner + ":")}),
           [[lumber, lumber, lumber ],
            [lumber, null  , lumber ],
            [lumber, lumber, lumber ]]);
        mods.jei.JEI.addItem(<charset:chest>.withTag({wood: toString(planks).replace("<", "").replace(">", "").replace(":", ";").replace(planks.definition.owner + ";", planks.definition.owner + ":")}));
    }
}


// Chopping.addRecipe("chopping_nail", woodenNail, <ore:hardwoodLumber>, [1], [4]);
Chopping.addRecipe("chopping_sticks", <minecraft:stick>, <ore:firewood>, [1], [4]);

// 1 log => 8 lumber = 16 sticks
// 1 log => 6 firewood = 24 sticks

// Treated Sticks workaround
<ore:lumberX>.addAll(<ore:lumber>);
<ore:lumberX>.remove(<contenttweaker:treated_wood_lumber>);

recipes.addShaped("Sticks", <minecraft:stick> * 4,
   [[<ore:lumberX> ],
    [<ore:lumberX> ]]);

Primitive.addRecipe(<minecraft:stick> * 4, <ore:lumberX>, <ore:lumberX>);

recipes.addShaped("Splitting Wedge", <contenttweaker:splitting_wedge>,
   [[<ore:ingotSteel>  ],
    [<ore:nuggetSteel> ]]);

recipes.addShapeless("Table Top", <contenttweaker:table_top>, [<ore:rocks>, <pyrotech:material:10>, <ore:lumber>, <ore:lumber>]);

// Remove default Crafting Table recipes
recipes.remove(<minecraft:crafting_table>);
recipes.remove(<tconstruct:tooltables>);

// Table Top => Crafting Table
recipes.addShapeless(<tconstruct:tooltables>, [<contenttweaker:table_top>, <ore:lumber>, <ore:lumber>]);

// 2x2 Crafting Table
recipes.addShaped(<tconstruct:tooltables>,
   [[<ore:plankBig>, <ore:plankBig>],
    [<ore:plankBig>, <ore:plankBig>],]);

// Conversion recipes
recipes.addShapeless(<minecraft:crafting_table>, [<tconstruct:tooltables>]);
recipes.addShapeless(<tconstruct:tooltables>, [<minecraft:crafting_table>]);
