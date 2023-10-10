
import classes.io.Replacer

import com.cleanroommc.groovyscript.api.IIngredient

IIngredient allSpringWater = (item('minecraft:water_bucket')
    | item('pyrotech:bucket_refractory')   .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_stone')        .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_wood')         .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_clay')         .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('harvestcraft:freshwateritem'))

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
Replacer.replaceOreDict(ore('listAllwater'), allSpringWater)

Replacer.run()