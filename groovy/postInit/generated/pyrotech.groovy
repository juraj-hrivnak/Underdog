
// Wooden Cog (class net.minecraft.item.crafting.ShapedRecipes)
item('pyrotech:cog_wood').tweakRecipe(
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('stickWood'), ore('lumber'), ore('stickWood')],
    [ore('stickWood'), ore('stickWood'), ore('stickWood')]
)

// Shelf (class net.minecraft.item.crafting.ShapedRecipes)
item('pyrotech:shelf').tweakRecipe(
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')]
)

// Crate (class net.minecraft.item.crafting.ShapedRecipes)
item('pyrotech:crate').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('slabWood'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Wooden Bucket (class net.minecraft.item.crafting.ShapedRecipes)
item('pyrotech:bucket_wood').tweakRecipe(
    [ore('lumber'), item('pyrotech:material', 12), ore('lumber')],
    [null, ore('lumber'), null]
)

// Stone Anvil (class crafttweaker.mc1120.recipes.MCRecipeShaped)
item('pyrotech:anvil_granite').tweakRecipe(
    [item('minecraft:stone_slab'), ore('rocks'), null]
)
