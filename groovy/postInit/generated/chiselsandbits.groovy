
// Wooden Wrench
item('chiselsandbits:wrench_wood').tweakRecipe(
    [null, ore('lumber'), null],
    [ore('lumber'), ore('stickWood'), null],
    [null, null, ore('stickWood')]
)

// Stone Chisel
item('chiselsandbits:chisel_stone').tweakRecipe(
    [ore('rocks'), ore('stickWood'), null]
)
