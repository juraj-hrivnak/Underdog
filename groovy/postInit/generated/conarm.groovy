
// Gauntlet of Far Reach
item('conarm:gauntlet_mat_reach').tweakRecipe(
    [ore('blockLapis'), item('mekanism:controlcircuit', 3), ore('blockLapis')],
    [item('mekanism:controlcircuit', 3), item('conarm:gauntlet_mat'), item('mekanism:controlcircuit', 3)],
    [ore('blockLapis'), item('mekanism:controlcircuit', 3), ore('blockLapis')]
)

// Traveller's Cloak (Invisibility)
item('conarm:travel_sneak').tweakRecipe(
    item('minecraft:potion').withNbt(["Potion": "minecraft:invisibility"]), item('minecraft:golden_carrot'), item('mekanism:controlcircuit', 3), item('minecraft:fermented_spider_eye'), item('conarm:travel_cloak')
)

// Traveller's Cloak (Slow Fall)
item('conarm:travel_slowfall').tweakRecipe(
    [ore('feather'), ore('blockSlimeCongealed'), ore('feather')],
    [ore('feather'), item('conarm:travel_cloak'), ore('feather')],
    [ore('feather'), item('mekanism:controlcircuit', 2), ore('feather')]
)
