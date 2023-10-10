
// Block Placer
item('cyclicmagic:placer_block').tweakRecipe(
    [ore('stones'), item('minecraft:dispenser'), ore('stones')],
    [ore('ingotIron'), ore('dustRedstone'), ore('ingotIron')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Pebble
(item('cyclicmagic:stone_pebble') * 32).tweakRecipe(
    [ore('rocks'), item('minecraft:dirt', 1), ore('rocks')],
    [item('minecraft:dirt', 1), null, item('minecraft:dirt', 1)],
    [ore('rocks'), item('minecraft:dirt', 1), ore('rocks')]
)

// Dice
item('cyclicmagic:dice').tweakRecipe(
    [ore('bone'), ore('rocks'), ore('bone')],
    [ore('rocks'), ore('dyeBlack'), ore('rocks')],
    [ore('bone'), ore('rocks'), ore('bone')]
)

// Fan
item('cyclicmagic:fan').tweakRecipe(
    [null, ore('ingotIron'), null],
    [ore('ingotIron'), item('minecraft:repeater'), ore('ingotIron')],
    [ore('stones'), ore('ingotIron'), ore('stones')]
)

// Item Magnet
item('cyclicmagic:magnet_block').tweakRecipe(
    [ore('nuggetIron'), ore('lumber'), ore('nuggetIron')],
    [ore('lumber'), ore('dyePurple'), ore('lumber')],
    [ore('nuggetIron'), ore('lumber'), ore('nuggetIron')]
)

// Combat Dynamite
(item('cyclicmagic:dynamite_safe') * 6).tweakRecipe(
    ore('gunpowder'), item('minecraft:sugar'), ore('gunpowder'), ore('paper'), item('minecraft:clay_ball'), item('minecraft:brown_mushroom'), ore('feather'), item('minecraft:wheat_seeds'), ore('rocks')
)
