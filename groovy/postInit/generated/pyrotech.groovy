
// Flint Shears
item('pyrotech:flint_shears').tweakRecipe(
    [ore('twine'), item('tconstruct:stone_stick'), item('pyrotech:material', 10)],
    [item('pyrotech:material', 10), null, null]
)

// Bone Shears
item('pyrotech:bone_shears').tweakRecipe(
    [ore('twine'), item('tconstruct:stone_stick'), item('pyrotech:material', 11)],
    [item('pyrotech:material', 11), null, null]
)

// Wooden Bucket
item('pyrotech:bucket_wood').tweakRecipe(
    [ore('lumber'), item('pyrotech:material', 12), ore('lumber')],
    [null, ore('lumber'), null]
)

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
