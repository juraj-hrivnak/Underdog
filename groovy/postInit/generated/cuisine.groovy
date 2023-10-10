
// Citrus Door
(item('cuisine:door') * 3).tweakRecipe(
    [item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber')],
    [item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber')]
)

// Citrus Boat
item('cuisine:boat').tweakRecipe(
    [item('contenttweaker:cuisine_citrus_lumber'), null, item('contenttweaker:cuisine_citrus_lumber')],
    [item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber')]
)

// Citrus Trapdoor
(item('cuisine:trapdoor') * 2).tweakRecipe(
    [item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber')],
    [item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber'), item('contenttweaker:cuisine_citrus_lumber')]
)

// Citrus Fence
(item('cuisine:fence') * 3).tweakRecipe(
    [item('contenttweaker:cuisine_citrus_lumber'), ore('stickWood'), item('contenttweaker:cuisine_citrus_lumber')],
    [item('contenttweaker:cuisine_citrus_lumber'), ore('stickWood'), item('contenttweaker:cuisine_citrus_lumber')]
)

// Citrus Fence Gate
item('cuisine:fence_gate').tweakRecipe(
    [ore('stickWood'), item('contenttweaker:cuisine_citrus_lumber'), ore('stickWood')],
    [ore('stickWood'), item('contenttweaker:cuisine_citrus_lumber'), ore('stickWood')]
)

// Dough
item('cuisine:food', 2).tweakRecipe(
    ore('foodFlour'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)
