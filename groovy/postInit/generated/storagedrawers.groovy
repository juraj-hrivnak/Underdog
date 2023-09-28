
// Concealment Key
item('storagedrawers:shroud_key').tweakRecipe(
    item('storagedrawers:drawer_key'), item('mekanism:controlcircuit', 3)
)

// Framed Trim
(item('storagedrawers:customtrim') * 4).tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('lumber'), ore('stickWood'), ore('lumber')]
)

// Framed Drawers 2x2
(item('storagedrawers:customdrawers', 2) * 4).tweakRecipe(
    [ore('chestWood'), ore('stickWood'), ore('chestWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('chestWood'), ore('stickWood'), ore('chestWood')]
)

// Framed Drawers 1x2
(item('storagedrawers:customdrawers', 1) * 2).tweakRecipe(
    [ore('stickWood'), ore('chestWood'), ore('stickWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('stickWood'), ore('chestWood'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "oak"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "oak"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_oak'), ore('chestWood'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [item('contenttweaker:lumber_vanilla_oak'), ore('chestWood'), item('contenttweaker:lumber_vanilla_oak')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "oak"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_oak'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_oak'), ore('chestWood')]
)

// Oak Trim
(item('storagedrawers:trim') * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_oak'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak'), item('contenttweaker:lumber_vanilla_oak')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_oak'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "spruce"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "spruce"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_spruce'), ore('chestWood'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [item('contenttweaker:lumber_vanilla_spruce'), ore('chestWood'), item('contenttweaker:lumber_vanilla_spruce')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "spruce"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_spruce'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_spruce'), ore('chestWood')]
)

// Spruce Trim
(item('storagedrawers:trim', 1) * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_spruce'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce'), item('contenttweaker:lumber_vanilla_spruce')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_spruce'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "birch"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "birch"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_birch'), ore('chestWood'), item('contenttweaker:lumber_vanilla_birch')],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [item('contenttweaker:lumber_vanilla_birch'), ore('chestWood'), item('contenttweaker:lumber_vanilla_birch')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "birch"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_birch'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_birch'), ore('chestWood')]
)

// Birch Trim
(item('storagedrawers:trim', 2) * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_birch'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch'), item('contenttweaker:lumber_vanilla_birch')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_birch'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "jungle"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "jungle"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_jungle'), ore('chestWood'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [item('contenttweaker:lumber_vanilla_jungle'), ore('chestWood'), item('contenttweaker:lumber_vanilla_jungle')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "jungle"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_jungle'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_jungle'), ore('chestWood')]
)

// Jungle Trim
(item('storagedrawers:trim', 3) * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_jungle'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle'), item('contenttweaker:lumber_vanilla_jungle')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_jungle'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "acacia"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "acacia"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_acacia'), ore('chestWood'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [item('contenttweaker:lumber_vanilla_acacia'), ore('chestWood'), item('contenttweaker:lumber_vanilla_acacia')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "acacia"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_acacia'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_acacia'), ore('chestWood')]
)

// Acacia Trim
(item('storagedrawers:trim', 4) * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_acacia'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia'), item('contenttweaker:lumber_vanilla_acacia')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_acacia'), ore('stickWood')]
)

// Basic Drawer
item('storagedrawers:basicdrawers').withNbt(["material": "dark_oak"]).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [null, ore('chestWood'), null],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')]
)

// Basic Drawers 1x2
(item('storagedrawers:basicdrawers', 1).withNbt(["material": "dark_oak"]) * 2).tweakRecipe(
    [item('contenttweaker:lumber_vanilla_dark_oak'), ore('chestWood'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), ore('chestWood'), item('contenttweaker:lumber_vanilla_dark_oak')]
)

// Basic Drawers 2x2
(item('storagedrawers:basicdrawers', 2).withNbt(["material": "dark_oak"]) * 4).tweakRecipe(
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_dark_oak'), ore('chestWood')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [ore('chestWood'), item('contenttweaker:lumber_vanilla_dark_oak'), ore('chestWood')]
)

// Dark Oak Trim
(item('storagedrawers:trim', 5) * 4).tweakRecipe(
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_dark_oak'), ore('stickWood')],
    [item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak'), item('contenttweaker:lumber_vanilla_dark_oak')],
    [ore('stickWood'), item('contenttweaker:lumber_vanilla_dark_oak'), ore('stickWood')]
)
