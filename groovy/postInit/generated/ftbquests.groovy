
// Quest Progress Detector
item('ftbquests:progress_detector').tweakRecipe(
    [ore('rocks'), ore('dustRedstone'), ore('rocks')],
    [ore('dustRedstone'), item('ftbquests:book'), ore('dustRedstone')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Quest Book
item('ftbquests:book').tweakRecipe(
    item('minecraft:book'), ore('stones')
)

// Loot Crate Opener
item('ftbquests:loot_crate_opener').tweakRecipe(
    [ore('lumber'), item('minecraft:stone_pickaxe'), ore('lumber')],
    [ore('lumber'), item('ftbquests:book'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Loot Crate Storage
item('ftbquests:loot_crate_storage').tweakRecipe(
    [ore('lumber'), ore('chest'), ore('lumber')],
    [ore('lumber'), item('ftbquests:book'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Task Screen
item('ftbquests:screen').tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('ftbquests:book'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)
