
import classes.Colors
import classes.Formats
import classes.Utils
import classes.ToolTips
import classes.io.Replacer

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.recipe.RecipeName
import com.codetaylor.mc.pyrotech.modules.tech.basic.ModuleTechBasic
import com.codetaylor.mc.pyrotech.modules.tech.basic.recipe.ChoppingBlockRecipe
import com.codetaylor.mc.pyrotech.modules.tech.machine.ModuleTechMachine
import com.codetaylor.mc.pyrotech.modules.tech.machine.recipe.BrickSawmillRecipe
import com.codetaylor.mc.pyrotech.modules.tech.machine.recipe.StoneSawmillRecipe

Map<ItemStack, List<ItemStack>> woodworking = [

    // Vanilla
    (item('contenttweaker:lumber_vanilla_oak')):              [item('minecraft:log')          , item('minecraft:planks')                    , item('minecraft:wooden_slab')                   , item('debark:debarked_log_minecraft_log')           ],
    (item('contenttweaker:lumber_vanilla_spruce')):           [item('minecraft:log:1')        , item('minecraft:planks:1')                  , item('minecraft:wooden_slab:1')                 , item('debark:debarked_log_minecraft_log:1')         ],
    (item('contenttweaker:lumber_vanilla_birch')):            [item('minecraft:log:2')        , item('minecraft:planks:2')                  , item('minecraft:wooden_slab:2')                 , item('debark:debarked_log_minecraft_log:3')         ],
    (item('contenttweaker:lumber_vanilla_jungle')):           [item('minecraft:log:3')        , item('minecraft:planks:3')                  , item('minecraft:wooden_slab:3')                 , item('debark:debarked_log_minecraft_log:2')         ],
    (item('contenttweaker:lumber_vanilla_acacia')):           [item('minecraft:log2')         , item('minecraft:planks:4')                  , item('minecraft:wooden_slab:4')                 , item('debark:debarked_log_minecraft_log2')          ],
    (item('contenttweaker:lumber_vanilla_dark_oak')):         [item('minecraft:log2:1')       , item('minecraft:planks:5')                  , item('minecraft:wooden_slab:5')                 , item('debark:debarked_log_minecraft_log2:1')        ],

    // Biomes O Plenty
    (item('contenttweaker:lumber_sacred_oak')):               [item('biomesoplenty:log_0:4')  , item('biomesoplenty:planks_0')              , item('biomesoplenty:wood_slab_0')               , item('debark:debarked_log_biomesoplenty_log_0')     ],
    (item('contenttweaker:lumber_cherry')):                   [item('biomesoplenty:log_0:5')  , item('biomesoplenty:planks_0:1')            , item('biomesoplenty:wood_slab_0:1')             , item('debark:debarked_log_biomesoplenty_log_0:1')   ],
    (item('contenttweaker:lumber_umbran')):                   [item('biomesoplenty:log_0:6')  , item('biomesoplenty:planks_0:2')            , item('biomesoplenty:wood_slab_0:2')             , item('debark:debarked_log_biomesoplenty_log_0:2')   ],
    (item('contenttweaker:lumber_fir')):                      [item('biomesoplenty:log_0:7')  , item('biomesoplenty:planks_0:3')            , item('biomesoplenty:wood_slab_0:3')             , item('debark:debarked_log_biomesoplenty_log_0:3')   ],
    (item('contenttweaker:lumber_ethereal')):                 [item('biomesoplenty:log_1:4')  , item('biomesoplenty:planks_0:4')            , item('biomesoplenty:wood_slab_0:4')             , item('debark:debarked_log_biomesoplenty_log_1')     ],
    (item('contenttweaker:lumber_magic')):                    [item('biomesoplenty:log_1:5')  , item('biomesoplenty:planks_0:5')            , item('biomesoplenty:wood_slab_0:5')             , item('debark:debarked_log_biomesoplenty_log_1:1')   ],
    (item('contenttweaker:lumber_mangrove')):                 [item('biomesoplenty:log_1:6')  , item('biomesoplenty:planks_0:6')            , item('biomesoplenty:wood_slab_0:6')             , item('debark:debarked_log_biomesoplenty_log_1:2')   ],
    (item('contenttweaker:lumber_palm')):                     [item('biomesoplenty:log_1:7')  , item('biomesoplenty:planks_0:7')            , item('biomesoplenty:wood_slab_0:7')             , item('debark:debarked_log_biomesoplenty_log_1:3')   ],
    (item('contenttweaker:lumber_redwood')):                  [item('biomesoplenty:log_2:4')  , item('biomesoplenty:planks_0:8')            , item('biomesoplenty:wood_slab_1')               , item('debark:debarked_log_biomesoplenty_log_2')     ],
    (item('contenttweaker:lumber_willow')):                   [item('biomesoplenty:log_2:5')  , item('biomesoplenty:planks_0:9')            , item('biomesoplenty:wood_slab_1:1')             , item('debark:debarked_log_biomesoplenty_log_2:1')   ],
    (item('contenttweaker:lumber_pine')):                     [item('biomesoplenty:log_2:6')  , item('biomesoplenty:planks_0:10')           , item('biomesoplenty:wood_slab_1:2')             , item('debark:debarked_log_biomesoplenty_log_2:2')   ],
    (item('contenttweaker:lumber_hellbark')):                 [item('biomesoplenty:log_2:7')  , item('biomesoplenty:planks_0:11')           , item('biomesoplenty:wood_slab_1:3')             , item('debark:debarked_log_biomesoplenty_log_2:3')   ],
    (item('contenttweaker:lumber_jacaranda')):                [item('biomesoplenty:log_3:4')  , item('biomesoplenty:planks_0:12')           , item('biomesoplenty:wood_slab_1:4')             , item('debark:debarked_log_biomesoplenty_log_3')     ],
    (item('contenttweaker:lumber_mahogany')):                 [item('biomesoplenty:log_3:5')  , item('biomesoplenty:planks_0:13')           , item('biomesoplenty:wood_slab_1:5')             , item('debark:debarked_log_biomesoplenty_log_3:1')   ],
    (item('contenttweaker:lumber_ebony')):                    [item('biomesoplenty:log_3:6')  , item('biomesoplenty:planks_0:14')           , item('biomesoplenty:wood_slab_1:6')             , item('debark:debarked_log_biomesoplenty_log_3:2')   ],
    (item('contenttweaker:lumber_eucalyptus')):               [item('biomesoplenty:log_3:7')  , item('biomesoplenty:planks_0:15')           , item('biomesoplenty:wood_slab_1:7')             , item('debark:debarked_log_biomesoplenty_log_3:3')   ],

    // Rustic
    (item('contenttweaker:lumber_planks_olive')):             [item('rustic:log')             , item('rustic:planks')                       , item('rustic:olive_slab_item')                  , item('debark:debarked_log_rustic_log')              ],
    (item('contenttweaker:lumber_planks_ironwood')):          [item('rustic:log:1')           , item('rustic:planks:1')                     , item('rustic:ironwood_slab_item')               , item('debark:debarked_log_rustic_log:1')            ],

    // Forestry
    (item('contenttweaker:lumber_planks.larch')):             [item('forestry:logs.0')        , item('forestry:planks.0')                   , item('forestry:slabs.0')                        , item('debark:debarked_log_forestry_logs_0')         ],
    (item('contenttweaker:lumber_planks.teak')):              [item('forestry:logs.0:1')      , item('forestry:planks.0:1')                 , item('forestry:slabs.0:1')                      , item('debark:debarked_log_forestry_logs_0:1')       ],
    (item('contenttweaker:lumber_planks.acacia')):            [item('forestry:logs.0:2')      , item('forestry:planks.0:2')                 , item('forestry:slabs.0:2')                      , item('debark:debarked_log_forestry_logs_0:2')       ],
    (item('contenttweaker:lumber_planks.lime')):              [item('forestry:logs.0:3')      , item('forestry:planks.0:3')                 , item('forestry:slabs.0:3')                      , item('debark:debarked_log_forestry_logs_0:3')       ],
    (item('contenttweaker:lumber_planks.chestnut')):          [item('forestry:logs.1')        , item('forestry:planks.0:4')                 , item('forestry:slabs.0:4')                      , item('debark:debarked_log_forestry_logs_1')         ],
    (item('contenttweaker:lumber_planks.wenge')):             [item('forestry:logs.1:1')      , item('forestry:planks.0:5')                 , item('forestry:slabs.0:5')                      , item('debark:debarked_log_forestry_logs_1:1')       ],
    (item('contenttweaker:lumber_planks.baobab')):            [item('forestry:logs.1:2')      , item('forestry:planks.0:6')                 , item('forestry:slabs.0:6')                      , item('debark:debarked_log_forestry_logs_1:2')       ],
    (item('contenttweaker:lumber_planks.sequoia')):           [item('forestry:logs.1:3')      , item('forestry:planks.0:7')                 , item('forestry:slabs.0:7')                      , item('debark:debarked_log_forestry_logs_1:3')       ],
    (item('contenttweaker:lumber_planks.kapok')):             [item('forestry:logs.2')        , item('forestry:planks.0:8')                 , item('forestry:slabs.1')                        , item('debark:debarked_log_forestry_logs_2')         ],
    (item('contenttweaker:lumber_planks.ebony')):             [item('forestry:logs.2:1')      , item('forestry:planks.0:9')                 , item('forestry:slabs.1:1')                      , item('debark:debarked_log_forestry_logs_2:1')       ],
    (item('contenttweaker:lumber_planks.mahogany')):          [item('forestry:logs.2:2')      , item('forestry:planks.0:10')                , item('forestry:slabs.1:2')                      , item('debark:debarked_log_forestry_logs_2:2')       ],
    (item('contenttweaker:lumber_planks.balsa')):             [item('forestry:logs.2:3')      , item('forestry:planks.0:11')                , item('forestry:slabs.1:3')                      , item('debark:debarked_log_forestry_logs_2:3')       ],
    (item('contenttweaker:lumber_planks.willow')):            [item('forestry:logs.3')        , item('forestry:planks.0:12')                , item('forestry:slabs.1:4')                      , item('debark:debarked_log_forestry_logs_3')         ],
    (item('contenttweaker:lumber_planks.walnut')):            [item('forestry:logs.3:1')      , item('forestry:planks.0:13')                , item('forestry:slabs.1:5')                      , item('debark:debarked_log_forestry_logs_3:1')       ],
    (item('contenttweaker:lumber_planks.greenheart')):        [item('forestry:logs.3:2')      , item('forestry:planks.0:14')                , item('forestry:slabs.1:6')                      , item('debark:debarked_log_forestry_logs_3:2')       ],
    (item('contenttweaker:lumber_planks.cherry')):            [item('forestry:logs.3:3')      , item('forestry:planks.0:15')                , item('forestry:slabs.1:7')                      , item('debark:debarked_log_forestry_logs_3:3')       ],
    (item('contenttweaker:lumber_planks.mahoe')):             [item('forestry:logs.4')        , item('forestry:planks.1')                   , item('forestry:slabs.2')                        , item('debark:debarked_log_forestry_logs_4')         ],
    (item('contenttweaker:lumber_planks.poplar')):            [item('forestry:logs.4:1')      , item('forestry:planks.1:1')                 , item('forestry:slabs.2:1')                      , item('debark:debarked_log_forestry_logs_4:1')       ],
    (item('contenttweaker:lumber_planks.palm')):              [item('forestry:logs.4:2')      , item('forestry:planks.1:2')                 , item('forestry:slabs.2:2')                      , item('debark:debarked_log_forestry_logs_4:2')       ],
    (item('contenttweaker:lumber_planks.papaya')):            [item('forestry:logs.4:3')      , item('forestry:planks.1:3')                 , item('forestry:slabs.2:3')                      , item('debark:debarked_log_forestry_logs_4:3')       ],
    (item('contenttweaker:lumber_planks.pine')):              [item('forestry:logs.5')        , item('forestry:planks.1:4')                 , item('forestry:slabs.2:4')                      , item('debark:debarked_log_forestry_logs_5')         ],
    (item('contenttweaker:lumber_planks.plum')):              [item('forestry:logs.5:1')      , item('forestry:planks.1:5')                 , item('forestry:slabs.2:5')                      , item('debark:debarked_log_forestry_logs_5:1')       ],
    (item('contenttweaker:lumber_planks.maple')):             [item('forestry:logs.5:2')      , item('forestry:planks.1:6')                 , item('forestry:slabs.2:6')                      , item('debark:debarked_log_forestry_logs_5:2')       ],
    (item('contenttweaker:lumber_planks.citrus')):            [item('forestry:logs.5:3')      , item('forestry:planks.1:7')                 , item('forestry:slabs.2:7')                      , item('debark:debarked_log_forestry_logs_5:3')       ],
    (item('contenttweaker:lumber_planks.giganteum')):         [item('forestry:logs.6')        , item('forestry:planks.1:8')                 , item('forestry:slabs.3')                        , item('debark:debarked_log_forestry_logs_6')         ],
    (item('contenttweaker:lumber_planks.ipe')):               [item('forestry:logs.6:1')      , item('forestry:planks.1:9')                 , item('forestry:slabs.3:1')                      , item('debark:debarked_log_forestry_logs_6:1')       ],
    (item('contenttweaker:lumber_planks.padauk')):            [item('forestry:logs.6:2')      , item('forestry:planks.1:10')                , item('forestry:slabs.3:2')                      , item('debark:debarked_log_forestry_logs_6:2')       ],
    (item('contenttweaker:lumber_planks.cocobolo')):          [item('forestry:logs.6:3')      , item('forestry:planks.1:11')                , item('forestry:slabs.3:3')                      , item('debark:debarked_log_forestry_logs_6:3')       ],
    (item('contenttweaker:lumber_planks.zebrawood')):         [item('forestry:logs.7')        , item('forestry:planks.1:12')                , item('forestry:slabs.3:4')                      , null                                          ],

    // Cuisine
    (item('contenttweaker:cuisine_citrus_lumber')):           [item('cuisine:log')            , item('cuisine:planks')                      , null                                      , null                                          ],

    // Rustic Painted Wood
    (item('contenttweaker:painted_wood_white_lumber')):       [null                     , item('rustic:painted_wood_white')           , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_orange_lumber')):      [null                     , item('rustic:painted_wood_orange')          , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_magenta_lumber')):     [null                     , item('rustic:painted_wood_magenta')         , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_light_blue_lumber')):  [null                     , item('rustic:painted_wood_light_blue')      , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_yellow_lumber')):      [null                     , item('rustic:painted_wood_yellow')          , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_lime_lumber')):        [null                     , item('rustic:painted_wood_lime')            , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_pink_lumber')):        [null                     , item('rustic:painted_wood_pink')            , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_gray_lumber')):        [null                     , item('rustic:painted_wood_gray')            , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_silver_lumber')):      [null                     , item('rustic:painted_wood_silver')          , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_cyan_lumber')):        [null                     , item('rustic:painted_wood_cyan')            , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_purple_lumber')):      [null                     , item('rustic:painted_wood_purple')          , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_blue_lumber')):        [null                     , item('rustic:painted_wood_blue')            , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_brown_lumber')):       [null                     , item('rustic:painted_wood_brown')           , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_green_lumber')):       [null                     , item('rustic:painted_wood_green')           , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_red_lumber')):         [null                     , item('rustic:painted_wood_red')             , null                                      , null                                          ],
    (item('contenttweaker:painted_wood_black_lumber')):       [null                     , item('rustic:painted_wood_black')           , null                                      , null                                          ],

    // Pyrotech
    (item('contenttweaker:tarred_lumber')):                   [null                     , item('pyrotech:planks_tarred')              , null                                      , null                                          ],

]

// Remove default Chest recipe
item('charset:chest').removeRecipe()

// Remove default Crafting Table recipes
item('minecraft:crafting_table').removeRecipe()
item('tconstruct:tooltables').removeRecipe()

def woodenNail = item('contenttweaker:nail_wooden')
def ironNail = item('contenttweaker:nail_iron')
IIngredient sawmillBlades =
     (item('pyrotech:sawmill_blade_stone:*')
    | item('pyrotech:sawmill_blade_flint:*')
    | item('pyrotech:sawmill_blade_bone:*')
    | item('pyrotech:sawmill_blade_iron:*')
    | item('pyrotech:sawmill_blade_gold:*')
    | item('pyrotech:sawmill_blade_diamond:*')
    | item('pyrotech:sawmill_blade_obsidian:*'))

ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.unfreeze()
ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.clear()

ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.unfreeze()
ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.clear()

for (x in woodworking) {

    def lumber = x.key
    def log = x.value[0]
    def planks = x.value[1]
    def slab = x.value[2]
    def debarkedLog = x.value[3]

    // Raw Lumber
    ItemStack rawLumber = lumber.withNbt(['raw': true])

    // Replacing tooltip for lumber with 'raw: true' nbt
    ToolTips.replaceTooltip(rawLumber, "Raw %itemName%")

    // Removing default recipe for planks
    planks.removeRecipe()

    if (log != null) {

        // Adding recipe for 8 lumbers with 'raw: true' nbt from one log
        mods.pyrotech.ChoppingBlock.recipeBuilder()
            .input(log)
            .output(rawLumber)
            .chops(1, 8)
            .name(Utils.generateRegistryName(rawLumber))
            .register()

        mods.mekanism.Sawmill.add(log, rawLumber * 8, item('pyrotech:rock:7'), 0.5)

        ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.groovyScript$registerEntry(
            new StoneSawmillRecipe(
                rawLumber * 8,
                log.toMcIngredient(),
                300,
                sawmillBlades.toMcIngredient(),
                1
            ).setRegistryName(Utils.generateRegistryName(rawLumber))
        )

        ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.groovyScript$registerEntry(
            new BrickSawmillRecipe(
                rawLumber * 8,
                log.toMcIngredient(),
                60,
                sawmillBlades.toMcIngredient(),
                1
            ).setRegistryName(Utils.generateRegistryName(rawLumber))
        )
    }

    // Recipes for slabs
    if (slab != null) {

        // Removing default recipes for slabs
        slab.removeRecipe()

        // Adding recipes for slabs
        (slab * 2).addRecipe(
            [lumber, lumber]
        )

        //todo Primitive crafting
        // Primitive.addRecipe(slab * 2, lumber, lumber);

        // Adding recipes for planks from slabs
        planks.addRecipe(
            [slab],
            [slab]
        )

        //todo Primitive crafting
        // Primitive.addRecipe(planks, slab, slab);

        // Adding recipes for lumber from slab
        lumber.addRecipe(slab)
    }

    if (debarkedLog != null) {

        // Adding recipe for 8 lumbers with "raw: true" tag from one log
        ModuleTechBasic.Registries.CHOPPING_BLOCK_RECIPE.groovyScript$registerEntry(
            new ChoppingBlockRecipe(
                rawLumber,
                debarkedLog.toMcIngredient(),
                1 as int[],
                8 as int[]
            ).setRegistryName(Utils.generateRegistryName(rawLumber))
        )

        mods.mekanism.Sawmill.add(debarkedLog, rawLumber * 8, item('pyrotech:rock:7'), 0.5)

        ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.groovyScript$registerEntry(
            new StoneSawmillRecipe(
                rawLumber * 8,
                debarkedLog.toMcIngredient(),
                300,
                sawmillBlades.toMcIngredient(),
                1
            ).setRegistryName(Utils.generateRegistryName(rawLumber))
        )

        ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.groovyScript$registerEntry(
            new BrickSawmillRecipe(
                rawLumber * 8,
                debarkedLog.toMcIngredient(),
                60,
                sawmillBlades.toMcIngredient(),
                1
            ).setRegistryName(Utils.generateRegistryName(rawLumber))
        )
    }

    // Adding 'lumber' OreDict to lumber
    ore('lumber').add(lumber)

    // Replacing planks with lumbers
    Replacer.replaceItemStack(planks, lumber)

    // Adding recipe for lumber from planks
    (lumber * 2).addRecipe(planks)

    // Adding recipe for planks block from four lumbers
    (planks * 2).addRecipe(
        [lumber, lumber],
        [lumber, lumber]
    )

    // Adding bunus recipe for using "raw" lumber with iron nails
    (planks * 4).addRecipe(
        [rawLumber, rawLumber, ironNail],
        [rawLumber, rawLumber, null    ],
        [ironNail , null     , null    ]
    )

    //todo (this should be hidden recipe) Adding recipe for lumber with iron nails
    (planks * 2).addRecipe(
        [lumber  , lumber, ironNail],
        [lumber  , lumber, null    ],
        [ironNail, null  , null    ]
    )

    mods.mekanism.sawmill.add(planks, lumber * 2, item())

    ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.groovyScript$registerEntry(
        new StoneSawmillRecipe(
            lumber * 2,
            planks.toMcIngredient(),
            200,
            sawmillBlades.toMcIngredient(),
            0
        ).setRegistryName(Utils.generateRegistryName(lumber))
    )

    ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.groovyScript$registerEntry(
        new BrickSawmillRecipe(
            lumber * 2,
            planks.toMcIngredient(),
            20,
            sawmillBlades.toMcIngredient(),
            0
        ).setRegistryName(Utils.generateRegistryName(lumber))
    )

    // Chest recipes
    item('charset:chest')
        .withNbt(['wood': planks.getItem().registryName.toString() + ";${planks.getMetadata()}"])
        .addRecipe(
            [lumber, lumber, lumber],
            [lumber, null  , lumber],
            [lumber, lumber, lumber]
        )

    // Stencil table recipes
    item('tconstruct:tooltables', 1)
        .withNbt(['textureBlock': [
            'id': planks.getItem().registryName.toString(),
            'Count': 1 as byte,
            'Damage': planks.getMetadata() as short
        ]])
        .addRecipe(
            [item('tconstruct:pattern'), lumber],
            [lumber                    , null  ]
        )
}

item('minecraft:stick').with {
    mods.pyrotech.ChoppingBlock.recipeBuilder()
        .input(ore('firewood'))
        .output(it)
        .chops(1, 4)
        .name(Utils.generateRegistryName(it))
        .register()
}


// 1 log => 8 lumber = 16 sticks
// 1 log => 6 firewood = 24 sticks

// Recipe for treated sticks
(item('immersiveengineering:material') * 4).tweakRecipe(
    'l',
    'l'
).with(
    l: item('contenttweaker:treated_wood_lumber')
)

// Recipe for sticks
(item('minecraft:stick') * 4).tweakRecipe( 'l', 'l' ).with(
    l: ore('lumber').without(item('contenttweaker:treated_wood_lumber'))
)

//todo primitive crafting
// Primitive.addRecipe(<minecraft:stick> * 4, <ore:lumberX>, <ore:lumberX>);

item('contenttweaker:splitting_wedge').addRecipe(
    [ore('ingotSteel') ],
    [ore('nuggetSteel')]
)

item('contenttweaker:table_top').addRecipe(
    ore('rocks'), item('pyrotech:material:10'), ore('lumber'), ore('lumber')
)

// Table Top => Crafting Table
item('tconstruct:tooltables').addRecipe(
    item('contenttweaker:table_top'), ore('lumber'), ore('lumber')
)

// 2x2 Crafting Table
item('tconstruct:tooltables').addRecipe(
    [ore('plankWood'), ore('plankWood')],
    [ore('plankWood'), ore('plankWood')]
)

// Conversion recipes
item('minecraft:crafting_table').addRecipe(item('tconstruct:tooltables'))
item('tconstruct:tooltables').addRecipe(item('minecraft:crafting_table'))
