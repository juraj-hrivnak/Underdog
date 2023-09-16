
// Wood Lock Mechanism (class net.minecraft.item.crafting.ShapedRecipes)
item('locks:wood_lock_mechanism').tweakRecipe(
    [ore('string'), ore('string'), ore('string')],
    [ore('stickWood'), ore('stickWood'), ore('stickWood')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Wood Lock (class net.minecraft.item.crafting.ShapedRecipes)
item('locks:wood_lock').tweakRecipe(
    [null, ore('lumber'), null],
    [ore('lumber'), item('locks:wood_lock_mechanism'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)
