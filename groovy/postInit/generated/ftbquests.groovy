
// Loot Crate Opener (class net.minecraft.item.crafting.ShapedRecipes)
item('ftbquests:loot_crate_opener').tweakRecipe(
    [ore('lumber'), item('minecraft:stone_pickaxe'), ore('lumber')],
    [ore('lumber'), item('ftbquests:book'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Quest Progress Detector (class net.minecraft.item.crafting.ShapedRecipes)
item('ftbquests:progress_detector').tweakRecipe(
    [ore('rocks'), ore('dustRedstone'), ore('rocks')],
    [ore('dustRedstone'), item('ftbquests:book'), ore('dustRedstone')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Quest Book (class net.minecraft.item.crafting.ShapelessRecipes)
item('ftbquests:book').tweakRecipe(
    item('minecraft:book'), ore('stones')
)

// Task Screen (class net.minecraft.item.crafting.ShapedRecipes)
item('ftbquests:screen').tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('ftbquests:book'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Loot Crate Storage (class net.minecraft.item.crafting.ShapedRecipes)
item('ftbquests:loot_crate_storage').tweakRecipe(
    [ore('lumber'), ore('chest'), ore('lumber')],
    [ore('lumber'), item('ftbquests:book'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)
