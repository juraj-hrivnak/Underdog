
// Little Workbench
item('littletiles:premade').withNbt(["structure": ["id": "workbench"]]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:crafting_table'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('littletiles:wrench'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), null, item('contenttweaker:lumber_vanilla_oak')]
)

// Structure Builder
item('littletiles:premade').withNbt(["structure": ["id": "structure_builder"]]).tweakRecipe(
    [item('minecraft:concrete', 15), item('minecraft:concrete', 15), item('minecraft:concrete', 15)],
    [item('minecraft:concrete', 15), item('minecraft:redstone'), item('minecraft:concrete', 15)],
    [item('minecraft:concrete', 15), item('contenttweaker:lumber_vanilla_oak'), item('minecraft:concrete', 15)]
)

// Little Storage Block
item('littletiles:ltstorageblocktile').tweakRecipe(
    [ore('chestWood'), null, null]
)

// Little Importer
item('littletiles:premade').withNbt(["structure": ["id": "importer"]]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:glass'), item('contenttweaker:lumber_vanilla_oak')],
    [item('minecraft:iron_ingot'), item('littletiles:recipeadvanced'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:redstone'), item('minecraft:iron_ingot')]
)

// Little Exporter
item('littletiles:premade').withNbt(["structure": ["id": "exporter"]]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:iron_bars'), item('contenttweaker:lumber_vanilla_oak')],
    [item('minecraft:iron_ingot'), item('littletiles:recipeadvanced'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:redstone'), item('minecraft:iron_ingot')]
)

// Blank-o-matic
item('littletiles:premade').withNbt(["structure": ["id": "blankomatic"]]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:iron_ingot'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('littletiles:colortube'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), null, item('contenttweaker:lumber_vanilla_oak')]
)
