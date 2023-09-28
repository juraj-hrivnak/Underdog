
// Olive Wood Stairs
(item('rustic:stairs_olive') * 4).tweakRecipe(
    [item('contenttweaker:lumber_planks_olive'), null, null],
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), null],
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive')]
)

// Olive Wood Fence Gate
item('rustic:fence_gate_olive').tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_planks_olive'), ore('stickWood')],
    [ore('stickWood'), item('contenttweaker:lumber_planks_olive'), ore('stickWood')]
)

// Olive Wood Fence
(item('rustic:fence_olive') * 3).tweakRecipe(
    [item('contenttweaker:lumber_planks_olive'), ore('stickWood'), item('contenttweaker:lumber_planks_olive')],
    [item('contenttweaker:lumber_planks_olive'), ore('stickWood'), item('contenttweaker:lumber_planks_olive')]
)

// Olive Door
(item('rustic:olive_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive')],
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive')]
)

// Liquid Barrel
(item('rustic:liquid_barrel') * 2).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('ingotIron'), null, ore('ingotIron')],
    [ore('lumber'), ore('slabWood'), ore('lumber')]
)

// Wooden Lantern
item('rustic:lantern_wood').tweakRecipe(
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [item('minecraft:glass_pane'), item('burningtorch:burningtorch'), item('minecraft:glass_pane')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')]
)

// Ironwood Stairs
(item('rustic:stairs_ironwood') * 4).tweakRecipe(
    [item('contenttweaker:lumber_planks_ironwood'), null, null],
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), null],
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood')]
)

// Ironwood Fence Gate
item('rustic:fence_gate_ironwood').tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_planks_ironwood'), ore('stickWood')],
    [ore('stickWood'), item('contenttweaker:lumber_planks_ironwood'), ore('stickWood')]
)

// Ironwood Fence
(item('rustic:fence_ironwood') * 3).tweakRecipe(
    [item('contenttweaker:lumber_planks_ironwood'), ore('stickWood'), item('contenttweaker:lumber_planks_ironwood')],
    [item('contenttweaker:lumber_planks_ironwood'), ore('stickWood'), item('contenttweaker:lumber_planks_ironwood')]
)

// Ironwood Door
(item('rustic:ironwood_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood')],
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood')]
)

// Crushing Tub
item('rustic:crushing_tub').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('ingotIron'), null, ore('ingotIron')],
    [ore('slabWood'), ore('slabWood'), ore('slabWood')]
)

// Brewing Barrel
item('rustic:brewing_barrel').tweakRecipe(
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [ore('slabWood'), null, ore('slabWood')],
    [ore('lumber'), ore('ingotIron'), ore('lumber')]
)

// Barrel
(item('rustic:barrel') * 2).tweakRecipe(
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('ingotIron'), null, ore('ingotIron')],
    [ore('lumber'), ore('slabWood'), ore('lumber')]
)

// Apiary
item('rustic:apiary').tweakRecipe(
    [ore('logWood'), ore('logWood'), ore('logWood')],
    [ore('lumber'), null, ore('lumber')],
    [ore('logWood'), ore('logWood'), ore('logWood')]
)

// Clay Wall
(item('rustic:clay_wall') * 8).tweakRecipe(
    [null, ore('lumber'), null],
    [ore('lumber'), item('minecraft:clay'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Crossed Clay Wall
item('rustic:clay_wall_cross').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [null, item('rustic:clay_wall'), null],
    [ore('lumber'), null, ore('lumber')]
)

// Diagonal Clay Wall
item('rustic:clay_wall_diag').tweakRecipe(
    [ore('lumber'), null, null],
    [null, item('rustic:clay_wall'), null],
    [null, null, ore('lumber')]
)

// Acacia Chair
(item('rustic:chair_acacia') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), null, null],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Dark Oak Chair
(item('rustic:chair_big_oak') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), null, null],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Birch Chair
(item('rustic:chair_birch') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), null, null],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Jungle Chair
(item('rustic:chair_jungle') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), null, null],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Oak Chair
(item('rustic:chair_oak') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), null, null],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Spruce Chair
(item('rustic:chair_spruce') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), null, null],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Olive Wood Chair
(item('rustic:chair_olive') * 4).tweakRecipe(
    [item('contenttweaker:lumber_planks_olive'), null, null],
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Ironwood Chair
(item('rustic:chair_ironwood') * 4).tweakRecipe(
    [item('contenttweaker:lumber_planks_ironwood'), null, null],
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Acacia Table
(item('rustic:table_acacia') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Dark Oak Table
(item('rustic:table_big_oak') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Birch Table
(item('rustic:table_birch') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Jungle Table
(item('rustic:table_jungle') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Oak Table
(item('rustic:table_oak') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Spruce Table
(item('rustic:table_spruce') * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Olive Wood Table
(item('rustic:table_olive') * 2).tweakRecipe(
    [item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive'), item('contenttweaker:lumber_planks_olive')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)

// Ironwood Table
(item('rustic:table_ironwood') * 2).tweakRecipe(
    [item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood'), item('contenttweaker:lumber_planks_ironwood')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)
