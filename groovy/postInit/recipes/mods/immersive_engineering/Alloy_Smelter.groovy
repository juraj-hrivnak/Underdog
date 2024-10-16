
//MOD_LOADED immersiveengineering

import classes.Utils

/**
 * Hide Alloy Smelter
 */

mods.jei.category.hideCategory 'ie.alloysmelter'

Utils.purge(
    item('immersiveengineering:stone_decoration_slab', 10),
    item('immersiveengineering:stone_decoration', 10),
)
