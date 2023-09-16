
// Treated Wood Planks (class blusunrize.immersiveengineering.common.crafting.RecipeShapedIngredient)
(item('immersiveengineering:treated_wood') * 8).tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('forge:bucketfilled').withNbt(["FluidName": "creosote", "Amount": 1000]), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)
