
// Acacia Door
(item('minecraft:acacia_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')]
)

// Button
item('minecraft:stone_button').tweakRecipe(
    [ore('stones'), null, null]
)

// Birch Wood Stairs
(item('minecraft:birch_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), null, null],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), null],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')]
)

// Redstone Repeater
item('minecraft:repeater').tweakRecipe(
    [ore('dustRedstone'), null, ore('dustRedstone')],
    [ore('stickWood'), ore('dustRedstone'), ore('stickWood')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Minecart with Chest
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Gray Bed
item('minecraft:bed', 7).tweakRecipe(
    [ore('woolGray'), ore('woolGray'), ore('woolGray')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Green Bed
item('minecraft:bed', 13).tweakRecipe(
    [ore('woolGreen'), ore('woolGreen'), ore('woolGreen')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Orange Bed
item('minecraft:bed', 1).tweakRecipe(
    [ore('woolOrange'), ore('woolOrange'), ore('woolOrange')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Dark Oak Fence Gate
item('minecraft:dark_oak_fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_dark_oak'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_dark_oak'), item('minecraft:stick')]
)

// Jukebox
item('minecraft:jukebox').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('gemDiamond'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Dark Oak Door
(item('minecraft:dark_oak_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')]
)

// Oak Wood Stairs
(item('minecraft:oak_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), null, null],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), null],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')]
)

// Acacia Fence
(item('minecraft:acacia_fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_acacia')]
)

// Acacia Fence Gate
item('minecraft:acacia_fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_acacia'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_acacia'), item('minecraft:stick')]
)

// End Crystal
item('minecraft:end_crystal').tweakRecipe(
    [ore('blockGlassColorless'), ore('blockGlassColorless'), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('mekanism:controlcircuit', 3), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('minecraft:ghast_tear'), ore('blockGlassColorless')]
)

// Yellow Bed
item('minecraft:bed', 4).tweakRecipe(
    [ore('woolYellow'), ore('woolYellow'), ore('woolYellow')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Minecart with Chest
item('minecraft:chest_minecart').tweakRecipe(
    [ore('ingotIron'), ore('chestWood'), ore('ingotIron')],
    [ore('ingotIron'), ore('ingotIron'), ore('ingotIron')]
)

// Redstone Repeater
item('minecraft:repeater').tweakRecipe(
    [item('minecraft:redstone_torch'), ore('dustRedstone'), item('minecraft:redstone_torch')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Jungle Door
(item('minecraft:jungle_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')]
)

// Redstone Comparator
item('minecraft:comparator').tweakRecipe(
    [null, item('minecraft:redstone_torch'), null],
    [item('minecraft:redstone_torch'), item('minecraft:quartz'), item('minecraft:redstone_torch')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Brown Bed
item('minecraft:bed', 12).tweakRecipe(
    [ore('woolBrown'), ore('woolBrown'), ore('woolBrown')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Tripwire Hook
(item('minecraft:tripwire_hook') * 2).tweakRecipe(
    [ore('ingotIron'), ore('stickWood'), ore('lumber')]
)

// Dropper
item('minecraft:dropper').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('rocks'), null, ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Pink Bed
item('minecraft:bed', 6).tweakRecipe(
    [ore('woolPink'), ore('woolPink'), ore('woolPink')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Shield
item('minecraft:shield').tweakRecipe(
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Acacia Wood Stairs
(item('minecraft:acacia_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), null, null],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), null],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')]
)

// Birch Door
(item('minecraft:birch_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')]
)

// Birch Fence Gate
item('minecraft:birch_fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_birch'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_birch'), item('minecraft:stick')]
)

// White Bed
item('minecraft:bed').tweakRecipe(
    [ore('woolWhite'), ore('woolWhite'), ore('woolWhite')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Observer
item('minecraft:observer').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('dustRedstone'), ore('dustRedstone'), item('minecraft:quartz')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Furnace
item('minecraft:furnace').tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('pyrotech:furnace_core'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// White Bed
item('minecraft:bed').tweakRecipe(
    [ore('blockWool'), ore('blockWool'), ore('blockWool')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Note Block
item('minecraft:noteblock').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('dustRedstone'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Dark Oak Fence
(item('minecraft:dark_oak_fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_dark_oak')]
)

// Moss Stone
item('minecraft:mossy_cobblestone').tweakRecipe(
    ore('rocks'), item('minecraft:vine')
)

// Sign
(item('minecraft:sign') * 3).tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [null, ore('stickWood'), null]
)

// Spruce Door
(item('minecraft:spruce_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')]
)

// Light Blue Bed
item('minecraft:bed', 3).tweakRecipe(
    [ore('woolLightBlue'), ore('woolLightBlue'), ore('woolLightBlue')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Magenta Bed
item('minecraft:bed', 2).tweakRecipe(
    [ore('woolMagenta'), ore('woolMagenta'), ore('woolMagenta')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Piston
item('minecraft:piston').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('rocks'), ore('ingotIron'), ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Oak Trapdoor
(item('minecraft:trapdoor') * 6).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')]
)

// Oak Fence
(item('minecraft:fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_oak')]
)

// Light Gray Bed
item('minecraft:bed', 8).tweakRecipe(
    [ore('woolLightGray'), ore('woolLightGray'), ore('woolLightGray')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Oak Fence Gate
item('minecraft:fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_oak'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_oak'), item('minecraft:stick')]
)

// Red Bed
item('minecraft:bed', 14).tweakRecipe(
    [ore('woolRed'), ore('woolRed'), ore('woolRed')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Cobblestone Slab
(item('minecraft:stone_slab', 3) * 4).tweakRecipe(
    [ore('rocks'), ore('rocks'), null]
)

// Spruce Wood Stairs
(item('minecraft:spruce_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), null, null],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), null],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')]
)

// Lime Bed
item('minecraft:bed', 5).tweakRecipe(
    [ore('woolLime'), ore('woolLime'), ore('woolLime')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Cyan Bed
item('minecraft:bed', 9).tweakRecipe(
    [ore('woolCyan'), ore('woolCyan'), ore('woolCyan')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Dark Oak Wood Stairs
(item('minecraft:dark_oak_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), null, null],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), null],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')]
)

// Stone Bricks
(item('minecraft:stonebrick') * 4).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), null, null]
)

// Birch Fence
(item('minecraft:birch_fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_birch')],
    [item('contenttweaker:lumber_vanilla_birch'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_birch')]
)

// Spruce Fence Gate
item('minecraft:spruce_fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_spruce'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_spruce'), item('minecraft:stick')]
)

// Jungle Fence Gate
item('minecraft:jungle_fence_gate').tweakRecipe(
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_jungle'), item('minecraft:stick')],
    [item('minecraft:stick'), item('contenttweaker:lumber_vanilla_jungle'), item('minecraft:stick')]
)

// Black Bed
item('minecraft:bed', 15).tweakRecipe(
    [ore('woolBlack'), ore('woolBlack'), ore('woolBlack')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Bowl
(item('minecraft:bowl') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [null, ore('lumber'), null]
)

// Dispenser
item('minecraft:dispenser').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('rocks'), item('minecraft:bow'), ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Wooden Sword
item('minecraft:wooden_sword').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('stickWood')]
)

// Brewing Stand
item('minecraft:brewing_stand').tweakRecipe(
    [null, item('minecraft:blaze_rod'), null],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Oak Bookshelf
item('minecraft:bookshelf').tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('minecraft:book'), item('minecraft:book'), item('minecraft:book')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')]
)

// Jungle Fence
(item('minecraft:jungle_fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_jungle')]
)

// Spruce Fence
(item('minecraft:spruce_fence') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('minecraft:stick'), item('contenttweaker:lumber_vanilla_spruce')]
)

// Blue Bed
item('minecraft:bed', 11).tweakRecipe(
    [ore('woolBlue'), ore('woolBlue'), ore('woolBlue')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Jungle Wood Stairs
(item('minecraft:jungle_stairs') * 4).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), null, null],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), null],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')]
)

// Stone Pressure Plate
item('minecraft:stone_pressure_plate').tweakRecipe(
    [ore('stones'), ore('stones'), null]
)

// Purple Bed
item('minecraft:bed', 10).tweakRecipe(
    [ore('woolPurple'), ore('woolPurple'), ore('woolPurple')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Oak Door
(item('minecraft:wooden_door') * 3).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')]
)
