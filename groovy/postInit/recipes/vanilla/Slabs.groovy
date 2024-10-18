
def slabsFix = { ItemStack output, input ->
    output.addRecipe(
        [input, input]
    )
}

slabsFix(item('minecraft:stone_slab', 1), item('divergentunderground:rock_sandstone'))
slabsFix(item('minecraft:stone_slab', 4), item('minecraft:brick'))
slabsFix(item('minecraft:stone_slab', 6), item('minecraft:netherbrick'))
slabsFix(item('minecraft:stone_slab', 7), item('minecraft:quartz'))
slabsFix(item('minecraft:stone_slab2'), item('divergentunderground:rock_red_sandstone'))
slabsFix(item('minecraft:stone_slab', 5) * 6, item('minecraft:stonebrick'))
slabsFix(item('minecraft:purpur_slab') * 6, item('minecraft:purpur_block'))

// Cobblestone > Cobblestone Slab
(item('minecraft:stone_slab', 3) * 4).tweakRecipe(
    [ore('cobblestone'), ore('cobblestone')]
)

// Rocks > Cobblestone Slab
item('minecraft:stone_slab', 3).addRecipe(
    [ore('rocks'), ore('rocks')]
)

// Cobblestone
item('minecraft:cobblestone').addRecipe(
    [item('minecraft:stone_slab', 3)],
    [item('minecraft:stone_slab', 3)]
)
