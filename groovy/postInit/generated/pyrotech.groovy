
// Wooden Cog
item('pyrotech:cog_wood').tweakRecipe(
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('stickWood'), ore('stickWood'), ore('stickWood')]
)

// Shelf
item('pyrotech:shelf').tweakRecipe(
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')]
)

// Crate
item('pyrotech:crate').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Wooden Bucket
item('pyrotech:bucket_wood').tweakRecipe(
    [ore('lumber'), item('pyrotech:material', 12), ore('lumber')],
    [null, ore('lumber'), null]
)

// Stone Anvil
item('pyrotech:anvil_granite').tweakRecipe(
    [item('minecraft:stone_slab'), ore('rocks'), null]
)
