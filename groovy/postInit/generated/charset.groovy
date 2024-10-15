
// Random Value Generator
item('charset:logic_gate').withNbt(['logic': 'complex-logic:random']).tweakRecipe(
    [item('minecraft:stone_slab'), ore('wireLogicBundled'), item('minecraft:stone_slab')],
    [item('minecraft:redstone_block'), item('mekanism:controlcircuit', 2), item('minecraft:comparator')],
    [item('minecraft:stone_slab'), ore('wireLogicBundled'), item('minecraft:stone_slab')]
)
