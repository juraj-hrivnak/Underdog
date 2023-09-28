
// Stonecutter
item('futuremc:stonecutter').tweakRecipe(
    [null, item('minecraft:iron_ingot'), null],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Loom
item('futuremc:loom').tweakRecipe(
    [ore('string'), ore('string'), ore('lumber')],
    [ore('lumber'), null, null]
)

// Lantern
item('futuremc:lantern').tweakRecipe(
    [item('minecraft:iron_nugget'), item('minecraft:iron_nugget'), item('minecraft:iron_nugget')],
    [item('minecraft:iron_nugget'), item('burningtorch:burningtorch'), item('minecraft:iron_nugget')],
    [item('minecraft:iron_nugget'), item('minecraft:iron_nugget'), item('minecraft:iron_nugget')]
)

// Grindstone
item('futuremc:grindstone').tweakRecipe(
    [ore('stickWood'), item('minecraft:stone_slab'), ore('stickWood')],
    [ore('lumber'), null, ore('lumber')]
)

// Cartography Table
item('futuremc:cartography_table').tweakRecipe(
    [ore('paper'), ore('paper'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Barrel
item('futuremc:barrel').tweakRecipe(
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')]
)
