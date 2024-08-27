
/**
 * Pam's HarvestCraft crops now create ethanol
 */

mods.immersiveengineering.fermenter.recipeBuilder()
    .fluidOutput(fluid('ethanol'))
    .input(ore('listAllveggie'))
    .energy(80)
    .register()

mods.immersiveengineering.fermenter.recipeBuilder()
    .fluidOutput(fluid('ethanol'))
    .input(ore('listAllfruit'))
    .energy(80)
    .register()
