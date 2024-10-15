
// Village Highlighter
item('openblocks:village_highlighter').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('gemEmerald'), ore('lumber')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Block Placer
item('openblocks:block_placer').tweakRecipe(
    [ore('ingotIron'), ore('rocks'), ore('rocks')],
    [item('minecraft:piston'), ore('dustRedstone'), ore('rocks')],
    [ore('ingotIron'), ore('rocks'), ore('rocks')]
)

// Building Guide
item('openblocks:guide').tweakRecipe(
    [ore('blockGlass'), ore('dustRedstone'), ore('blockGlass')],
    [ore('blockGlass'), item('burningtorch:burningtorch'), ore('blockGlass')],
    [ore('blockGlass'), ore('dustRedstone'), ore('blockGlass')]
)

// Drawing Table
item('openblocks:drawing_table').tweakRecipe(
    [item('openblocks:generic', 10), item('openblocks:generic', 11), item('openblocks:generic', 10)],
    [ore('lumber'), ore('craftingTableWood'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Assistant's base
item('openblocks:generic', 9).tweakRecipe(
    [ore('ingotIron'), item('mekanism:controlcircuit', 2), ore('ingotIron')],
    [ore('ingotIron'), ore('dustRedstone'), ore('ingotIron')]
)

// Enhanced Building Guide
item('openblocks:builder_guide').tweakRecipe(
    [ore('blockGlass'), ore('dustRedstone'), ore('blockGlass')],
    [item('mekanism:controlcircuit', 2), item('burningtorch:burningtorch'), item('mekanism:controlcircuit', 2)],
    [ore('blockGlass'), ore('dustRedstone'), ore('blockGlass')]
)

// Elevator
item('openblocks:elevator', 1).tweakRecipe(
    [item('minecraft:wool', 1), item('minecraft:wool', 1), item('minecraft:wool', 1)],
    [item('minecraft:wool', 1), item('mekanism:controlcircuit', 2), item('minecraft:wool', 1)],
    [item('minecraft:wool', 1), item('minecraft:wool', 1), item('minecraft:wool', 1)]
)

// Elevator
item('openblocks:elevator', 2).tweakRecipe(
    [item('minecraft:wool', 2), item('minecraft:wool', 2), item('minecraft:wool', 2)],
    [item('minecraft:wool', 2), item('mekanism:controlcircuit', 2), item('minecraft:wool', 2)],
    [item('minecraft:wool', 2), item('minecraft:wool', 2), item('minecraft:wool', 2)]
)

// Elevator
item('openblocks:elevator', 3).tweakRecipe(
    [item('minecraft:wool', 3), item('minecraft:wool', 3), item('minecraft:wool', 3)],
    [item('minecraft:wool', 3), item('mekanism:controlcircuit', 2), item('minecraft:wool', 3)],
    [item('minecraft:wool', 3), item('minecraft:wool', 3), item('minecraft:wool', 3)]
)

// Elevator
item('openblocks:elevator', 4).tweakRecipe(
    [item('minecraft:wool', 4), item('minecraft:wool', 4), item('minecraft:wool', 4)],
    [item('minecraft:wool', 4), item('mekanism:controlcircuit', 2), item('minecraft:wool', 4)],
    [item('minecraft:wool', 4), item('minecraft:wool', 4), item('minecraft:wool', 4)]
)

// Elevator
item('openblocks:elevator', 5).tweakRecipe(
    [item('minecraft:wool', 5), item('minecraft:wool', 5), item('minecraft:wool', 5)],
    [item('minecraft:wool', 5), item('mekanism:controlcircuit', 2), item('minecraft:wool', 5)],
    [item('minecraft:wool', 5), item('minecraft:wool', 5), item('minecraft:wool', 5)]
)

// Elevator
item('openblocks:elevator', 6).tweakRecipe(
    [item('minecraft:wool', 6), item('minecraft:wool', 6), item('minecraft:wool', 6)],
    [item('minecraft:wool', 6), item('mekanism:controlcircuit', 2), item('minecraft:wool', 6)],
    [item('minecraft:wool', 6), item('minecraft:wool', 6), item('minecraft:wool', 6)]
)

// Elevator
item('openblocks:elevator', 7).tweakRecipe(
    [item('minecraft:wool', 7), item('minecraft:wool', 7), item('minecraft:wool', 7)],
    [item('minecraft:wool', 7), item('mekanism:controlcircuit', 2), item('minecraft:wool', 7)],
    [item('minecraft:wool', 7), item('minecraft:wool', 7), item('minecraft:wool', 7)]
)

// Elevator
item('openblocks:elevator', 8).tweakRecipe(
    [item('minecraft:wool', 8), item('minecraft:wool', 8), item('minecraft:wool', 8)],
    [item('minecraft:wool', 8), item('mekanism:controlcircuit', 2), item('minecraft:wool', 8)],
    [item('minecraft:wool', 8), item('minecraft:wool', 8), item('minecraft:wool', 8)]
)

// Elevator
item('openblocks:elevator', 9).tweakRecipe(
    [item('minecraft:wool', 9), item('minecraft:wool', 9), item('minecraft:wool', 9)],
    [item('minecraft:wool', 9), item('mekanism:controlcircuit', 2), item('minecraft:wool', 9)],
    [item('minecraft:wool', 9), item('minecraft:wool', 9), item('minecraft:wool', 9)]
)

// Elevator
item('openblocks:elevator').tweakRecipe(
    [item('minecraft:wool'), item('minecraft:wool'), item('minecraft:wool')],
    [item('minecraft:wool'), item('mekanism:controlcircuit', 2), item('minecraft:wool')],
    [item('minecraft:wool'), item('minecraft:wool'), item('minecraft:wool')]
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 15790320, 'Mode': 0]).tweakRecipe(
    ore('dyeWhite'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 14602026, 'Mode': 0]).tweakRecipe(
    ore('dyeYellow'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 6719955, 'Mode': 0]).tweakRecipe(
    ore('dyeLightBlue'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 12801229, 'Mode': 0]).tweakRecipe(
    ore('dyeMagenta'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 15435844, 'Mode': 0]).tweakRecipe(
    ore('dyeOrange'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 4408131, 'Mode': 0]).tweakRecipe(
    ore('dyeGray'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 14188952, 'Mode': 0]).tweakRecipe(
    ore('dyePink'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 4312372, 'Mode': 0]).tweakRecipe(
    ore('dyeLime'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Pedometer
item('openblocks:pedometer').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('dustRedstone'), item('minecraft:clock'), ore('dustRedstone')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Item Dropper
item('openblocks:item_dropper').tweakRecipe(
    [ore('ingotIron'), ore('rocks'), ore('rocks')],
    [item('minecraft:hopper'), ore('dustRedstone'), ore('rocks')],
    [ore('ingotIron'), ore('rocks'), ore('rocks')]
)

// Vacuum Hopper
item('openblocks:vacuum_hopper').tweakRecipe(
    item('minecraft:hopper'), item('minecraft:obsidian'), item('mekanism:controlcircuit', 3)
)

// Block Breaker
item('openblocks:block_breaker').tweakRecipe(
    [ore('ingotIron'), ore('rocks'), ore('rocks')],
    [item('minecraft:diamond_pickaxe'), ore('dustRedstone'), ore('rocks')],
    [ore('ingotIron'), ore('rocks'), ore('rocks')]
)

// Path
(item('openblocks:path') * 2).tweakRecipe(
    ore('stones'), ore('rocks')
)

// /dev/null
item('openblocks:dev_null').tweakRecipe(
    ore('rocks'), item('minecraft:apple')
)

// Sky Block
(item('openblocks:sky') * 6).tweakRecipe(
    [ore('blockGlassColorless'), item('mekanism:controlcircuit', 3), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('minecraft:end_stone'), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('mekanism:controlcircuit', 3), ore('blockGlassColorless')]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 14).tweakRecipe(
    [item('minecraft:wool', 14), ore('ingotIron'), item('minecraft:wool', 14)],
    [item('minecraft:wool', 14), item('mekanism:controlcircuit', 2), item('minecraft:wool', 14)],
    [item('minecraft:wool', 14), ore('ingotIron'), item('minecraft:wool', 14)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 12).tweakRecipe(
    [item('minecraft:wool', 12), ore('ingotIron'), item('minecraft:wool', 12)],
    [item('minecraft:wool', 12), item('mekanism:controlcircuit', 2), item('minecraft:wool', 12)],
    [item('minecraft:wool', 12), ore('ingotIron'), item('minecraft:wool', 12)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 13).tweakRecipe(
    [item('minecraft:wool', 13), ore('ingotIron'), item('minecraft:wool', 13)],
    [item('minecraft:wool', 13), item('mekanism:controlcircuit', 2), item('minecraft:wool', 13)],
    [item('minecraft:wool', 13), ore('ingotIron'), item('minecraft:wool', 13)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 10).tweakRecipe(
    [item('minecraft:wool', 10), ore('ingotIron'), item('minecraft:wool', 10)],
    [item('minecraft:wool', 10), item('mekanism:controlcircuit', 2), item('minecraft:wool', 10)],
    [item('minecraft:wool', 10), ore('ingotIron'), item('minecraft:wool', 10)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 11).tweakRecipe(
    [item('minecraft:wool', 11), ore('ingotIron'), item('minecraft:wool', 11)],
    [item('minecraft:wool', 11), item('mekanism:controlcircuit', 2), item('minecraft:wool', 11)],
    [item('minecraft:wool', 11), ore('ingotIron'), item('minecraft:wool', 11)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 9).tweakRecipe(
    [item('minecraft:wool', 9), ore('ingotIron'), item('minecraft:wool', 9)],
    [item('minecraft:wool', 9), item('mekanism:controlcircuit', 2), item('minecraft:wool', 9)],
    [item('minecraft:wool', 9), ore('ingotIron'), item('minecraft:wool', 9)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 7).tweakRecipe(
    [item('minecraft:wool', 7), ore('ingotIron'), item('minecraft:wool', 7)],
    [item('minecraft:wool', 7), item('mekanism:controlcircuit', 2), item('minecraft:wool', 7)],
    [item('minecraft:wool', 7), ore('ingotIron'), item('minecraft:wool', 7)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 8).tweakRecipe(
    [item('minecraft:wool', 8), ore('ingotIron'), item('minecraft:wool', 8)],
    [item('minecraft:wool', 8), item('mekanism:controlcircuit', 2), item('minecraft:wool', 8)],
    [item('minecraft:wool', 8), ore('ingotIron'), item('minecraft:wool', 8)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 5).tweakRecipe(
    [item('minecraft:wool', 5), ore('ingotIron'), item('minecraft:wool', 5)],
    [item('minecraft:wool', 5), item('mekanism:controlcircuit', 2), item('minecraft:wool', 5)],
    [item('minecraft:wool', 5), ore('ingotIron'), item('minecraft:wool', 5)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 6).tweakRecipe(
    [item('minecraft:wool', 6), ore('ingotIron'), item('minecraft:wool', 6)],
    [item('minecraft:wool', 6), item('mekanism:controlcircuit', 2), item('minecraft:wool', 6)],
    [item('minecraft:wool', 6), ore('ingotIron'), item('minecraft:wool', 6)]
)

// Elevator
item('openblocks:elevator', 15).tweakRecipe(
    [item('minecraft:wool', 15), item('minecraft:wool', 15), item('minecraft:wool', 15)],
    [item('minecraft:wool', 15), item('mekanism:controlcircuit', 2), item('minecraft:wool', 15)],
    [item('minecraft:wool', 15), item('minecraft:wool', 15), item('minecraft:wool', 15)]
)

// Elevator
item('openblocks:elevator', 14).tweakRecipe(
    [item('minecraft:wool', 14), item('minecraft:wool', 14), item('minecraft:wool', 14)],
    [item('minecraft:wool', 14), item('mekanism:controlcircuit', 2), item('minecraft:wool', 14)],
    [item('minecraft:wool', 14), item('minecraft:wool', 14), item('minecraft:wool', 14)]
)

// Elevator
item('openblocks:elevator', 11).tweakRecipe(
    [item('minecraft:wool', 11), item('minecraft:wool', 11), item('minecraft:wool', 11)],
    [item('minecraft:wool', 11), item('mekanism:controlcircuit', 2), item('minecraft:wool', 11)],
    [item('minecraft:wool', 11), item('minecraft:wool', 11), item('minecraft:wool', 11)]
)

// Elevator
item('openblocks:elevator', 10).tweakRecipe(
    [item('minecraft:wool', 10), item('minecraft:wool', 10), item('minecraft:wool', 10)],
    [item('minecraft:wool', 10), item('mekanism:controlcircuit', 2), item('minecraft:wool', 10)],
    [item('minecraft:wool', 10), item('minecraft:wool', 10), item('minecraft:wool', 10)]
)

// Elevator
item('openblocks:elevator', 13).tweakRecipe(
    [item('minecraft:wool', 13), item('minecraft:wool', 13), item('minecraft:wool', 13)],
    [item('minecraft:wool', 13), item('mekanism:controlcircuit', 2), item('minecraft:wool', 13)],
    [item('minecraft:wool', 13), item('minecraft:wool', 13), item('minecraft:wool', 13)]
)

// Elevator
item('openblocks:elevator', 12).tweakRecipe(
    [item('minecraft:wool', 12), item('minecraft:wool', 12), item('minecraft:wool', 12)],
    [item('minecraft:wool', 12), item('mekanism:controlcircuit', 2), item('minecraft:wool', 12)],
    [item('minecraft:wool', 12), item('minecraft:wool', 12), item('minecraft:wool', 12)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 15).tweakRecipe(
    [item('minecraft:wool', 15), ore('ingotIron'), item('minecraft:wool', 15)],
    [item('minecraft:wool', 15), item('mekanism:controlcircuit', 2), item('minecraft:wool', 15)],
    [item('minecraft:wool', 15), ore('ingotIron'), item('minecraft:wool', 15)]
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 3887386, 'Mode': 0]).tweakRecipe(
    ore('dyeGreen'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 5320730, 'Mode': 0]).tweakRecipe(
    ore('dyeBrown'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 1973019, 'Mode': 0]).tweakRecipe(
    ore('dyeBlack'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 11743532, 'Mode': 0]).tweakRecipe(
    ore('dyeRed'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Pencil
item('openblocks:imaginary').withNbt(['Uses': 10.0D, 'Mode': 0]).tweakRecipe(
    item('minecraft:coal', 1), ore('stickWood'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Pencil
item('openblocks:imaginary').withNbt(['Uses': 10.0D, 'Mode': 0]).tweakRecipe(
    item('minecraft:coal'), ore('stickWood'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 2651799, 'Mode': 0]).tweakRecipe(
    ore('dyeCyan'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 11250603, 'Mode': 0]).tweakRecipe(
    ore('dyeLightGray'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 2437522, 'Mode': 0]).tweakRecipe(
    ore('dyeBlue'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Magic Crayon
item('openblocks:imaginary', 1).withNbt(['Uses': 10.0D, 'Color': 8073150, 'Mode': 0]).tweakRecipe(
    ore('dyePurple'), item('minecraft:paper'), item('mekanism:controlcircuit', 3), ore('slimeball')
)

// Rotating Elevator
item('openblocks:elevator_rotating').tweakRecipe(
    [item('minecraft:wool'), ore('ingotIron'), item('minecraft:wool')],
    [item('minecraft:wool'), item('mekanism:controlcircuit', 2), item('minecraft:wool')],
    [item('minecraft:wool'), ore('ingotIron'), item('minecraft:wool')]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 1).tweakRecipe(
    [item('minecraft:wool', 1), ore('ingotIron'), item('minecraft:wool', 1)],
    [item('minecraft:wool', 1), item('mekanism:controlcircuit', 2), item('minecraft:wool', 1)],
    [item('minecraft:wool', 1), ore('ingotIron'), item('minecraft:wool', 1)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 2).tweakRecipe(
    [item('minecraft:wool', 2), ore('ingotIron'), item('minecraft:wool', 2)],
    [item('minecraft:wool', 2), item('mekanism:controlcircuit', 2), item('minecraft:wool', 2)],
    [item('minecraft:wool', 2), ore('ingotIron'), item('minecraft:wool', 2)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 3).tweakRecipe(
    [item('minecraft:wool', 3), ore('ingotIron'), item('minecraft:wool', 3)],
    [item('minecraft:wool', 3), item('mekanism:controlcircuit', 2), item('minecraft:wool', 3)],
    [item('minecraft:wool', 3), ore('ingotIron'), item('minecraft:wool', 3)]
)

// Rotating Elevator
item('openblocks:elevator_rotating', 4).tweakRecipe(
    [item('minecraft:wool', 4), ore('ingotIron'), item('minecraft:wool', 4)],
    [item('minecraft:wool', 4), item('mekanism:controlcircuit', 2), item('minecraft:wool', 4)],
    [item('minecraft:wool', 4), ore('ingotIron'), item('minecraft:wool', 4)]
)

// Cartographer
item('openblocks:cartographer').tweakRecipe(
    item('openblocks:generic', 9), item('mekanism:controlcircuit', 3)
)

// Golden eye
item('openblocks:golden_eye', 90).tweakRecipe(
    item('openblocks:golden_eye', 100), item('mekanism:controlcircuit', 2)
)

// .name
item('openblocks:generic', 4).tweakRecipe(
    [item('mekanism:controlcircuit', 2), ore('dustRedstone'), item('mekanism:controlcircuit', 2)],
    [ore('dustRedstone'), item('openblocks:generic', 3), ore('dustRedstone')],
    [item('mekanism:controlcircuit', 2), ore('dustRedstone'), item('mekanism:controlcircuit', 2)]
)

// .name
item('openblocks:generic', 4).tweakRecipe(
    [ore('dustRedstone'), item('mekanism:controlcircuit', 2), ore('dustRedstone')],
    [item('mekanism:controlcircuit', 2), item('openblocks:generic', 3), item('mekanism:controlcircuit', 2)],
    [ore('dustRedstone'), item('mekanism:controlcircuit', 2), ore('dustRedstone')]
)

// Golden eye
item('openblocks:golden_eye', 100).tweakRecipe(
    [ore('nuggetGold'), ore('nuggetGold'), ore('nuggetGold')],
    [ore('nuggetGold'), item('mekanism:controlcircuit', 3), ore('nuggetGold')],
    [ore('nuggetGold'), ore('nuggetGold'), ore('nuggetGold')]
)
