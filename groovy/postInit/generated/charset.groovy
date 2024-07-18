
// Random Value Generator
item('charset:logic_gate').withNbt(['logic': 'complex-logic:random']).tweakRecipe(
    [item('mocreatures:deep_wyvstone_slab'), ore('wireLogicBundled'), item('mocreatures:deep_wyvstone_slab')],
    [item('minecraft:redstone_block'), item('mekanism:controlcircuit', 2), item('minecraft:comparator')],
    [item('mocreatures:deep_wyvstone_slab'), ore('wireLogicBundled'), item('mocreatures:deep_wyvstone_slab')]
)
