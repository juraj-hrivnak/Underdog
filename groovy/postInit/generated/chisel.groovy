
// Offset Tool
item('chisel:offsettool').tweakRecipe(
    [ore('ingotIron'), item('mekanism:controlcircuit', 2), ore('stickWood')],
    [ore('ingotIron'), null, null]
)

// Antiblock
(item('chisel:antiblock', 15) * 8).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), ore('dustGlowstone'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Futura Block
(item('chisel:futura') * 8).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), ore('dustRedstone'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Valentines' Block
(item('chisel:valentines', 9) * 32).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('minecraft:skull'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Valentines' Block
(item('chisel:valentines') * 4).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('minecraft:dye', 9), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)
