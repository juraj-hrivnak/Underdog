
import classes.io.Replacer
import classes.Water

// Torch
Replacer.replaceItemStack(item('minecraft:torch'), item('burningtorch:burningtorch'))

// Ender Pearl, Ender Eye
Replacer.replaceItemStack(item('minecraft:ender_pearl'), item('mekanism:controlcircuit', 2))
Replacer.replaceItemStack(item('minecraft:ender_eye'), item('mekanism:controlcircuit', 3))

// Lumber
Replacer.replaceOreDict(ore('plankWood'), ore('lumber'))

// Cobblestone, Stone
Replacer.replaceOreDict(ore('cobblestone'), ore('rocks'))
Replacer.replaceOreDict(ore('stone'), ore('stones'))

// Spring Water
Replacer.replaceOreDict(ore('listAllwater'), Water.spring)

Replacer.run()