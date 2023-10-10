
// Timer
item('darkutils:timer').tweakRecipe(
    [ore('stones'), item('minecraft:redstone_torch'), ore('stones')],
    [item('minecraft:redstone_torch'), item('minecraft:clock'), item('minecraft:redstone_torch')],
    [ore('stones'), item('minecraft:redstone_torch'), ore('stones')]
)

// Slowness Trap
item('darkutils:trap_tile', 3).tweakRecipe(
    [ore('stones'), item('minecraft:soul_sand'), ore('stones')]
)

// Anti-Slime Block
item('darkutils:anti_slime').tweakRecipe(
    [ore('stones'), item('minecraft:cobblestone_wall'), ore('stones')],
    [item('minecraft:cobblestone_wall'), item('darkutils:material', 2), item('minecraft:cobblestone_wall')],
    [ore('stones'), item('minecraft:cobblestone_wall'), ore('stones')]
)

// Mob Filter
(item('darkutils:filter', 10) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), ore('obsidian'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Maim Trap
item('darkutils:trap_tile', 6).tweakRecipe(
    [ore('stones'), item('minecraft:nether_star'), ore('stones')]
)

// Mob Filter
(item('darkutils:filter', 3) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:rotten_flesh'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Vector Plate
(item('darkutils:trap_move') * 8).tweakRecipe(
    [ore('ingotIron'), ore('slimeball'), ore('ingotIron')],
    [ore('stones'), item('minecraft:sugar'), ore('stones')]
)

// Poison Trap
item('darkutils:trap_tile').tweakRecipe(
    [ore('stones'), item('minecraft:spider_eye'), ore('stones')]
)

// Damage Trap
item('darkutils:trap_tile', 2).tweakRecipe(
    [ore('stones'), item('minecraft:iron_sword'), ore('stones')]
)

// Item Grate
item('darkutils:grate').tweakRecipe(
    ore('stones'), item('minecraft:iron_bars'), item('minecraft:trapdoor')
)

// Mob Filter
(item('darkutils:filter') * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:golden_pickaxe'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Mob Filter
(item('darkutils:filter', 9) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:blaze_powder'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Mob Filter
(item('darkutils:filter', 1) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), ore('bone'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Sneaky Torch
item('darkutils:sneaky_torch').tweakRecipe(
    item('darkutils:sneaky'), item('burningtorch:burningtorch')
)

// Mob Filter
(item('darkutils:filter', 7) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:milk_bucket'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Weakness Trap
item('darkutils:trap_tile', 1).tweakRecipe(
    [ore('stones'), item('minecraft:fermented_spider_eye'), ore('stones')]
)

// Sneaky Block
(item('darkutils:sneaky') * 8).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('darkutils:material', 2), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Anchor Plate
item('darkutils:trap_anchor').tweakRecipe(
    [ore('stones'), ore('slimeball'), ore('stones')],
    [ore('slimeball'), ore('slimeball'), ore('slimeball')],
    [ore('stones'), ore('slimeball'), ore('stones')]
)

// Player Trap
item('darkutils:trap_tile', 7).tweakRecipe(
    [ore('stones'), item('minecraft:skull'), ore('stones')]
)

// Mob Filter
(item('darkutils:filter', 2) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:spider_eye'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Mob Filter
(item('darkutils:filter', 5) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), item('minecraft:water_bucket'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Mob Filter
(item('darkutils:filter', 4) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), ore('cropWheat'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Portal Charm
item('darkutils:charm_portal').tweakRecipe(
    [null, ore('string'), null],
    [ore('obsidian'), item('mekanism:controlcircuit', 3), ore('obsidian')],
    [null, ore('obsidian'), null]
)

// Mob Filter
(item('darkutils:filter', 8) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), null, ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Wither Trap
item('darkutils:trap_tile', 5).tweakRecipe(
    [ore('stones'), item('darkutils:material'), ore('stones')]
)

// Mob Filter
(item('darkutils:filter', 6) * 4).tweakRecipe(
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')],
    [ore('stones'), ore('egg'), ore('stones')],
    [ore('fenceGateWood'), ore('stones'), ore('fenceGateWood')]
)

// Flame Trap
item('darkutils:trap_tile', 4).tweakRecipe(
    [ore('stones'), item('minecraft:flint_and_steel'), ore('stones')]
)
