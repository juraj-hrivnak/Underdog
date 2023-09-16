
// Combat Dynamite (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('cyclicmagic:dynamite_safe') * 6).tweakRecipe(
    ore('gunpowder'), item('minecraft:sugar'), ore('gunpowder'), ore('paper'), item('minecraft:clay_ball'), item('minecraft:brown_mushroom'), ore('feather'), item('minecraft:wheat_seeds'), ore('rocks')
)

// Pebble (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('cyclicmagic:stone_pebble') * 32).tweakRecipe(
    [ore('rocks'), item('minecraft:dirt', 1), ore('rocks')],
    [item('minecraft:dirt', 1), null, item('minecraft:dirt', 1)],
    [ore('rocks'), item('minecraft:dirt', 1), ore('rocks')]
)

// Item Magnet (class net.minecraftforge.oredict.ShapedOreRecipe)
item('cyclicmagic:magnet_block').tweakRecipe(
    [ore('nuggetIron'), ore('lumber'), ore('nuggetIron')],
    [ore('lumber'), ore('dyePurple'), ore('lumber')],
    [ore('nuggetIron'), ore('lumber'), ore('nuggetIron')]
)

// Block Placer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('cyclicmagic:placer_block').tweakRecipe(
    [ore('stones'), item('minecraft:dispenser'), ore('stones')],
    [ore('ingotIron'), ore('dustRedstone'), ore('ingotIron')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Fan (class net.minecraftforge.oredict.ShapedOreRecipe)
item('cyclicmagic:fan').tweakRecipe(
    [null, ore('ingotIron'), null],
    [ore('ingotIron'), item('minecraft:repeater'), ore('ingotIron')],
    [ore('stones'), ore('ingotIron'), ore('stones')]
)

// Dice (class net.minecraftforge.oredict.ShapedOreRecipe)
item('cyclicmagic:dice').tweakRecipe(
    [ore('bone'), ore('rocks'), ore('bone')],
    [ore('rocks'), ore('dyeBlack'), ore('rocks')],
    [ore('bone'), ore('rocks'), ore('bone')]
)
