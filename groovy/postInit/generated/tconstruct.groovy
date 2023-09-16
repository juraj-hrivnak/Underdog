
// Wooden Hopper (class net.minecraftforge.oredict.ShapedOreRecipe)
item('tconstruct:wooden_hopper').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('chestWood'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Wooden Rail (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('tconstruct:wood_rail') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [ore('lumber'), null, ore('lumber')]
)

// Wooden Rail with a Trapdoor (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('tconstruct:wood_rail_trapdoor') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('trapdoorWood'), ore('lumber')],
    [ore('lumber'), null, ore('lumber')]
)

// Blank Pattern (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('tconstruct:pattern') * 4).tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('stickWood')],
    [ore('lumber'), null, null]
)

// Part Chest (class net.minecraftforge.oredict.ShapedOreRecipe)
item('tconstruct:tooltables', 5).tweakRecipe(
    [null, item('tconstruct:pattern'), null],
    [ore('stickWood'), ore('chestWood'), ore('stickWood')],
    [null, ore('lumber'), null]
)

// Pattern Chest (class net.minecraftforge.oredict.ShapedOreRecipe)
item('tconstruct:tooltables', 4).tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('tconstruct:pattern'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)
