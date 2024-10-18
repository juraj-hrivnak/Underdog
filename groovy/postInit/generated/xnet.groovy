
// Antenna Dish
item('xnet:antenna_dish').tweakRecipe(
    [item('minecraft:iron_trapdoor'), item('minecraft:iron_trapdoor'), item('minecraft:iron_trapdoor')],
    [item('minecraft:iron_trapdoor'), item('mekanism:controlcircuit', 2), item('minecraft:iron_trapdoor')],
    [null, item('minecraft:iron_ingot'), null]
)

// Connector Upgrade Kit
item('xnet:connector_upgrade').tweakRecipe(
    [item('minecraft:paper'), item('mekanism:controlcircuit', 2), item('minecraft:diamond')],
    [item('minecraft:redstone'), null, null]
)

// Advanced Connector
item('xnet:advanced_connector').tweakRecipe(
    [item('xnet:connector'), item('mekanism:controlcircuit', 2), item('minecraft:diamond')],
    [item('minecraft:redstone'), null, null]
)

// Wireless Router
item('xnet:wireless_router').tweakRecipe(
    [item('mekanism:controlcircuit', 2), item('minecraft:comparator'), item('mekanism:controlcircuit', 2)],
    [item('minecraft:redstone'), item('minecraft:iron_block'), item('minecraft:redstone')],
    [item('mekanism:controlcircuit', 2), item('minecraft:redstone'), item('mekanism:controlcircuit', 2)]
)

// Router
item('xnet:router').tweakRecipe(
    [item('minecraft:golden_rail'), item('minecraft:comparator'), item('minecraft:golden_rail')],
    [item('minecraft:redstone'), item('minecraft:iron_block'), item('minecraft:redstone')],
    [item('minecraft:iron_ingot'), item('mekanism:controlcircuit', 2), item('minecraft:iron_ingot')]
)
