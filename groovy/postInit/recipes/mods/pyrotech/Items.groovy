
//MOD_LOADED pyrotech

import classes.Utils
import classes.io.Replacer

/**
 * Worktable removal
 */

Utils.purge(
    item('pyrotech:worktable_stone'),
    item('pyrotech:worktable')
)

mods.jei.category.hideCategory 'pyrotech.worktable'

/**
 * Unneeded items
 */

Utils.purge(
    item('pyrotech:fossil_ore'),
    item('pyrotech:dense_coal_ore'),
    item('pyrotech:dense_nether_coal_ore'),
    item('pyrotech:rock_netherrack'),
    item('pyrotech:living_tar'),
    item('pyrotech:material', 32),
    item('pyrotech:rock'),
    item('pyrotech:rock', 1),
    item('pyrotech:rock', 2),
    item('pyrotech:rock', 3),
    item('pyrotech:rock', 6),
    item('pyrotech:rock', 8),
    item('pyrotech:rock', 10),
    item('pyrotech:limestone'),
    item('pyrotech:material', 28),

    item('pyrotech:cobblestone'),
    item('pyrotech:cobblestone', 1),
    item('pyrotech:cobblestone', 2),
    item('pyrotech:cobblestone', 3),

    item('pyrotech:crude_hammer'),
)

// Refractory Faucet removal
Utils.purge(item('pyrotech:faucet_brick'))

// Stone Rod removal
item('pyrotech:material', 27).with {
    Utils.purge(it)
    ore('stickStone').remove(it)
    Replacer.replaceItemStack(item('pyrotech:material', 27), item('tconstruct:stone_stick'))
}

item('pyrotech:sawmill_blade_stone').tweakRecipe(
    'rrr',
    'rsr',
    'rrr'
).with(
    r: ore('rocks'),
    s: ore('stones')
)

item('pyrotech:flint_and_tinder').tweakRecipe(
    item('pyrotech:material', 10), item('pyrotech:material', 13), ore('rocks')
)

Utils.removeFurnaceRecipe(
    item('pyrotech:material', 22),
    item('minecraft:stone', 5),
    item('minecraft:stone', 3),
    item('minecraft:stone', 1),
)

def clayLump = item('pyrotech:material', 17)

// Remove Washed Hide crafting
item('pyrotech:hide_washed').removeRecipe()
item('pyrotech:hide_small_washed').removeRecipe()

// Remove Sapling to Stick recipe
'pyrotech:stick'.removeRecipe()

// Torch
Utils.purge(
    item('pyrotech:torch_stone'),
    item('pyrotech:torch_fiber')
)

// 2x Mulch =') 10x Bonemeal
(item('minecraft:dye', 15) * 16).tweakRecipe(item('pyrotech:mulch'), item('pyrotech:mulch'))

// 1x Mulch =') 8x Bio Fuel
(item('mekanism:biofuel') * 8).tweakRecipe(item('pyrotech:mulch'))

// Milk compat
ore('listAllmilk').add(item('pyrotech:bucket_clay', 1))
ore('listAllmilk').add(item('pyrotech:bucket_wood', 1))
ore('listAllmilk').add(item('pyrotech:bucket_stone', 1))
ore('listAllmilk').add(item('pyrotech:bucket_refractory', 1))

// Coal Coke Block
ore('blockFuelCoke').add(item('pyrotech:coal_coke_block'))

// Wood Pile
item('pyrotech:log_pile').tweakRecipe(
    'xxx',
    'xxx',
    'xxx'
).with(
    x: ore('firewood')
)

item('pyrotech:log_pile').setBurnTime(480)

// Masonry Brick
(item('pyrotech:material', 16) * 2).addRecipe(
    clayLump, ore('rocks'), ore('rocks')
)

// Stone Hammer
item('pyrotech:stone_hammer').tweakRecipe(
    [ore('rocks')    , ore('rocks')        ],
    [ore('stickWood'), ore('rocks').reuse()]
)

// Anvil Granite =') Stone Anvil
item('pyrotech:anvil_granite').tweakRecipe(
    [item('minecraft:stone_slab') | item('minecraft:stone_slab', 3)],
    [ore('cobblestone')                                            ]
)

// Flint And Tinder
item('pyrotech:flint_and_tinder').addRecipe(
    ore('getItem()Flint'), item('pyrotech:material', 13), ore('rocks')
)

// Refractory
def refracLump = item('pyrotech:material', 35)
def refracBrick = item('pyrotech:material', 5)
def refracBlock = item('pyrotech:refractory_brick_block')

// Kiln
item('pyrotech:brick_kiln').tweakRecipe(
    [refracBrick, refracLump , refracBrick],
    [refracLump , null       , refracLump ],
    [refracBrick, refracBlock, refracBrick]
)

// Oven
item('pyrotech:brick_oven').tweakRecipe(
    [refracBrick, refracBrick, refracBrick],
    [refracLump , null       , refracLump ],
    [refracBrick, refracBlock, refracBrick]
)

// Sawmill
item('pyrotech:brick_sawmill').tweakRecipe(
    [refracBrick, null       , refracBrick],
    [refracLump , null       , refracLump ],
    [refracBrick, refracBlock, refracBrick]
)

// Crucible
item('pyrotech:brick_crucible').tweakRecipe(
    [refracBrick, null       , refracBrick],
    [refracLump , refracLump , refracLump ],
    [refracBrick, refracBlock, refracBrick]
)

// Bloomery
item('pyrotech:bloomery').tweakRecipe(
    [refracBrick, null       , refracBrick],
    [refracBrick, null       , refracBrick],
    [refracBrick, refracBlock, refracBrick]
)

// Stone
def masonryBrick = item('pyrotech:material', 16)
def masonryBlock = item('pyrotech:masonry_brick_block')

// Kiln
item('pyrotech:stone_kiln').tweakRecipe(
    [masonryBrick, clayLump    , masonryBrick],
    [clayLump    , null        , clayLump    ],
    [masonryBrick, masonryBlock, masonryBrick]
)

// Oven
item('pyrotech:stone_oven').tweakRecipe(
    [masonryBrick, masonryBrick, masonryBrick],
    [clayLump    , null        , clayLump    ],
    [masonryBrick, masonryBlock, masonryBrick]
)

// Sawmill
item('pyrotech:stone_sawmill').tweakRecipe(
    [masonryBrick, null        , masonryBrick],
    [clayLump    , null        , clayLump    ],
    [masonryBrick, masonryBlock, masonryBrick]
)

// Crucible
item('pyrotech:stone_crucible').tweakRecipe(
    [masonryBrick, null        , masonryBrick],
    [clayLump    , clayLump    , clayLump    ],
    [masonryBrick, masonryBlock, masonryBrick]
)


// Soaking Pot
item('pyrotech:soaking_pot').tweakRecipe(
    [ore('lumber'), masonryBrick, ore('lumber')],
    [masonryBrick , clayLump    , masonryBrick ],
    [ore('lumber'), masonryBrick, ore('lumber')]
)

// Compacting Bin
item('pyrotech:compacting_bin').tweakRecipe(
    [masonryBrick , ore('lumber'), masonryBrick ],
    [ore('lumber'), null         , ore('lumber')],
    [masonryBrick , ore('lumber'), masonryBrick ]
)


// Bellows
item('pyrotech:bellows').tweakRecipe(
    [ore('lumber') , masonryBrick  , ore('lumber') ],
    [ore('leather'), ore('leather'), ore('leather')],
    [masonryBrick  , masonryBrick  , masonryBrick  ]
)

def boatFix = [
    (item('minecraft:boat')):           item('contenttweaker:lumber_vanilla_oak'),
    (item('minecraft:spruce_boat')):    item('contenttweaker:lumber_vanilla_spruce'),
    (item('minecraft:birch_boat')):     item('contenttweaker:lumber_vanilla_birch'),
    (item('minecraft:jungle_boat')):    item('contenttweaker:lumber_vanilla_jungle'),
    (item('minecraft:acacia_boat')):    item('contenttweaker:lumber_vanilla_acacia'),
    (item('minecraft:dark_oak_boat')):  item('contenttweaker:lumber_vanilla_dark_oak')
]

boatFix.each { output, input ->
    output.tweakRecipe(
        [input, null , input],
        [input, input, input]
    )
}

def tongsFix = [
    (item('pyrotech:tongs_stone')):      item('pyrotech:material', 16),
    (item('pyrotech:tongs_flint')):      item('pyrotech:material', 10),
    (item('pyrotech:tongs_bone')):       item('pyrotech:material', 11),
    (item('pyrotech:tongs_iron')):       item('pyrotech:material', 19),
    (item('pyrotech:tongs_gold')):       item('pyrotech:material', 34),
    (item('pyrotech:tongs_diamond')):    item('pyrotech:material', 18),
    (item('pyrotech:tongs_obsidian')):   item('pyrotech:material', 33)
]

tongsFix.each { output, input ->
    output.tweakRecipe(
        [null           , input          , null ],
        [ore('rodStone'), input          , input],
        [null           , ore('rodStone'), null ]
    )
}

def cogFix = [
    (item('pyrotech:cog_stone')): ore('rocks'),
    (item('pyrotech:cog_flint')): item('pyrotech:material', 10),
    (item('pyrotech:cog_bone')):  item('pyrotech:material', 11)
]

cogFix.each { output, input ->
    output.tweakRecipe(
        [input, input          , input ],
        [input, ore('rodStone'), input],
        [input, input          , input ]
    )
}

def treatLumber = item('contenttweaker:treated_wood_lumber')

// Durable Shelf
(item('pyrotech:shelf_stone') * 2).tweakRecipe(
    [masonryBrick, treatLumber           , masonryBrick],
    [treatLumber , item('pyrotech:shelf'), treatLumber ],
    [masonryBrick, treatLumber           , masonryBrick]
)


// Durable Stash
(item('pyrotech:stash_stone') * 2).tweakRecipe(
    [masonryBrick, treatLumber           , masonryBrick],
    [treatLumber , item('pyrotech:stash'), treatLumber ],
    [masonryBrick, treatLumber           , masonryBrick]
)

// Durable Crate
(item('pyrotech:crate_stone') * 2).tweakRecipe(
    [masonryBrick, treatLumber           , masonryBrick],
    [treatLumber , item('pyrotech:crate'), treatLumber ],
    [masonryBrick, treatLumber           , masonryBrick]
)

// Mechanical Hopper
item('pyrotech:mechanical_hopper').tweakRecipe(
    [masonryBrick, null           , masonryBrick],
    [treatLumber , ore('rodStone'), treatLumber ],
    [null        , masonryBrick   , null        ]
)

// Mechanical Bellows
item('pyrotech:mechanical_bellows').tweakRecipe(
    [treatLumber    , item('minecraft:piston'), treatLumber    ],
    [ore('rodStone'), item('pyrotech:bellows'), ore('rodStone')],
    [treatLumber    , null                    , treatLumber    ]
)

// Mechanical Compacting Bin
item('pyrotech:mechanical_compacting_bin').tweakRecipe(
    [masonryBrick                      , treatLumber, masonryBrick            ],
    [item('pyrotech:mechanical_hopper'), null       , item('minecraft:piston')],
    [masonryBrick                      , treatLumber, masonryBrick            ]
)

// Mechanical Mulch Spreader
item('pyrotech:mechanical_mulch_spreader').tweakRecipe(
    [masonryBrick                      , treatLumber, masonryBrick                      ],
    [item('pyrotech:mechanical_hopper'), null       , item('pyrotech:mechanical_hopper')],
    [masonryBrick                      , treatLumber, masonryBrick                      ]
)

// Trip Hammer
item('pyrotech:trip_hammer').tweakRecipe(
    [masonryBrick                      , treatLumber              , masonryBrick],
    [item('pyrotech:mechanical_hopper'), item('pyrotech:cog_iron'), treatLumber ],
    [masonryBrick                      , treatLumber              , masonryBrick]
)


// Drying Rack
item('pyrotech:drying_rack', 1).tweakRecipe(
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('lumber')   , null            , ore('lumber')    ],
    [ore('stickWood'), null            , ore('stickWood') ]
)

// Composting Bin
item('pyrotech:compost_bin').tweakRecipe(
    [ore('stickWood'), null            , ore('stickWood')],
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('lumber')   , null            , ore('lumber')   ]
)

// Tanning Rack
item('pyrotech:tanning_rack').tweakRecipe(
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('stickWood'), null           , ore('stickWood') ],
    [ore('lumber')   , ore('stickWood'), ore('lumber')   ]
)

// Barrel
item('pyrotech:barrel').tweakRecipe(
    [ore('lumber'), null        , ore('lumber') ],
    [ore('lumber'), null        , ore('lumber') ],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Barrel Lid
(item('pyrotech:barrel_lid') * 3).tweakRecipe(
   [item('minecraft:wooden_pressure_plate'), item('minecraft:wooden_pressure_plate'), item('minecraft:wooden_pressure_plate')]
)

// Butchers Block
item('pyrotech:butchers_block').tweakRecipe(
    [ore('slabWood'), ore('slabWood') , ore('slabWood')],
    [ore('lumber')  , null            , ore('lumber')  ],
    [ore('lumber')  , ore('stickWood'), ore('lumber')  ]
)
