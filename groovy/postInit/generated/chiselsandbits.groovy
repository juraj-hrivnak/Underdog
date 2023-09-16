
// Wooden Wrench (class net.minecraft.item.crafting.ShapedRecipes)
item('chiselsandbits:wrench_wood').tweakRecipe(
    [null, ore('lumber'), null],
    [ore('lumber'), ore('stickWood'), null],
    [null, null, ore('stickWood')]
)

// Stone Chisel (class net.minecraft.item.crafting.ShapedRecipes)
item('chiselsandbits:chisel_stone').tweakRecipe(
    [ore('rocks'), ore('stickWood'), null]
)
