
// Wax (class net.minecraft.item.crafting.ShapelessRecipes)
(item('dawnoftimebuilder:wax') * 10).tweakRecipe(
    item('minecraft:sugar'), item('burningtorch:burningtorch')
)

// Stone Lantern (T?r?) (class net.minecraft.item.crafting.ShapedRecipes)
(item('dawnoftimebuilder:stone_lantern') * 6).tweakRecipe(
    [item('dawnoftimebuilder:grey_roof_tiles'), item('dawnoftimebuilder:grey_roof_tiles'), item('dawnoftimebuilder:grey_roof_tiles')],
    [item('minecraft:paper'), item('burningtorch:burningtorch'), item('minecraft:paper')],
    [null, item('minecraft:cobblestone'), null]
)

// Paper Lantern (Akach?chin) (class net.minecraft.item.crafting.ShapedRecipes)
(item('dawnoftimebuilder:paper_lantern') * 6).tweakRecipe(
    [null, item('minecraft:stick'), null],
    [item('dawnoftimebuilder:silk'), item('burningtorch:burningtorch'), item('dawnoftimebuilder:silk')],
    [item('minecraft:dye'), item('dawnoftimebuilder:silk'), item('minecraft:dye')]
)

// Paper Lamp (Andon) (class net.minecraft.item.crafting.ShapedRecipes)
(item('dawnoftimebuilder:paper_lamp') * 6).tweakRecipe(
    [item('minecraft:stick'), item('minecraft:paper'), item('minecraft:stick')],
    [item('minecraft:stick'), item('burningtorch:burningtorch'), item('minecraft:stick')],
    [item('minecraft:stick'), null, item('minecraft:stick')]
)
