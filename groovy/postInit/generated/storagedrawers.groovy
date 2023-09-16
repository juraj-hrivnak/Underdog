
// Concealment Key (class net.minecraft.item.crafting.ShapelessRecipes)
item('storagedrawers:shroud_key').tweakRecipe(
    item('storagedrawers:drawer_key'), item('mekanism:controlcircuit', 3)
)

// Framed Trim (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('storagedrawers:customtrim') * 4).tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('lumber'), ore('stickWood'), ore('lumber')]
)

// Framed Drawers 2x2 (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('storagedrawers:customdrawers', 2) * 4).tweakRecipe(
    [ore('chestWood'), ore('stickWood'), ore('chestWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('chestWood'), ore('stickWood'), ore('chestWood')]
)

// Framed Drawers 1x2 (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('storagedrawers:customdrawers', 1) * 2).tweakRecipe(
    [ore('stickWood'), ore('chestWood'), ore('stickWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('stickWood'), ore('chestWood'), ore('stickWood')]
)
