
// Treated Wood Stairs
(item('immersiveengineering:treated_wood_stairs0') * 4).tweakRecipe(
    [item('contenttweaker:treated_wood_lumber'), null, null],
    [item('contenttweaker:treated_wood_lumber'), item('contenttweaker:treated_wood_lumber'), null],
    [item('contenttweaker:treated_wood_lumber'), item('contenttweaker:treated_wood_lumber'), item('contenttweaker:treated_wood_lumber')]
)

// Treated Wood Planks
item('immersiveengineering:treated_wood', 1).tweakRecipe(
    item('contenttweaker:treated_wood_lumber')
)
