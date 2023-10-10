
// Pattern Chest
item('tconstruct:tooltables', 4).tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('tconstruct:pattern'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Blank Pattern
(item('tconstruct:pattern') * 4).tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('stickWood')],
    [ore('lumber'), null, null]
)

// Wooden Hopper
item('tconstruct:wooden_hopper').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('chestWood'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Wooden Rail with a Trapdoor
(item('tconstruct:wood_rail_trapdoor') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('trapdoorWood'), ore('lumber')],
    [ore('lumber'), null, ore('lumber')]
)

// Wooden Rail
(item('tconstruct:wood_rail') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [ore('lumber'), null, ore('lumber')]
)

// Part Chest
item('tconstruct:tooltables', 5).tweakRecipe(
    [null, item('tconstruct:pattern'), null],
    [ore('stickWood'), ore('chestWood'), ore('stickWood')],
    [null, ore('lumber'), null]
)

// Stencil Table
item('tconstruct:tooltables', 1).withNbt(["textureBlock": ["id": "minecraft:planks", "Count": 1, "Damage": (short) 0]]).tweakRecipe(
    [item('tconstruct:pattern'), item('contenttweaker:lumber_vanilla_oak'), null]
)
