
/**
 * Fix HOP Graphite
 */

mods.immersiveengineering.squeezer.recipeBuilder()
    .output(item('immersiveengineering:material', 18))
    .input(ore('dustCoke') * 8)
    .energy(80)
    .register()

mods.immersiveengineering.squeezer.removeByOutput(item('immersiveengineering:material', 18))

/**
 * Seed oil Pam's HarvestCraft compat
 */

mods.immersiveengineering.squeezer.recipeBuilder()
    .fluidOutput(fluid('plantoil') * 80)
    .input(ore('listAllseed') * 8)
    .energy(80)
    .register()

mods.immersiveengineering.squeezer.removeByInput(item('minecraft:wheat_seeds'))
mods.immersiveengineering.squeezer.removeByInput(item('minecraft:pumpkin_seeds'))
mods.immersiveengineering.squeezer.removeByInput(item('minecraft:melon_seeds'))
mods.immersiveengineering.squeezer.removeByInput(item('minecraft:beetroot_seeds'))
