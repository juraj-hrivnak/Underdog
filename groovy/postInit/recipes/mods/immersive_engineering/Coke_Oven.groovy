
//MOD_LOADED immersiveengineering

import classes.Utils

/**
 * Hide Coke Oven
 */

mods.jei.category.hideCategory('ie.cokeoven')

Utils.purge(
    item('immersiveengineering:stone_decoration'),
    item('immersiveengineering:stone_decoration_slab'),
    item('immersivetech:stone_decoration'),
    item('immersivetech:stone_decoration_slab'),
)
