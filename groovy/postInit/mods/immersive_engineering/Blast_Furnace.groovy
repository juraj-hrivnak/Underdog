
//MOD_LOADED immersiveengineering

import classes.Utils

/**
 * Hide Crude Blast Furnace
 */

mods.jei.catalyst.remove('ie.blastfurnace', item('immersiveengineering:stone_device', 1))
mods.jei.catalyst.remove('ie.blastfurnace.fuel', item('immersiveengineering:stone_device', 1))

Utils.purge(
    item('immersiveengineering:stone_decoration_slab', 1),
    item('immersiveengineering:stone_decoration', 1),
)

/**
 * Fuel
 */

mods.immersiveengineering.blast_furnace_fuel.add(item('pyrotech:charcoal_block'), 3000)

/**
 * Items
 */

// Reinforced Blast Bricks
item('immersiveengineering:stone_decoration', 2).tweakRecipe(
    [ore('plateIron')],
    [item('pyrotech:refractory_brick_block')]
)

// Slag
item('immersiveengineering:material', 7).with {
    Utils.purge(it)
    ore('itemSlag').remove(it)
}