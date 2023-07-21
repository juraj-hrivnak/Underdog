
import com.cleanroommc.groovyscript.api.IIngredient

/**
 * ItemStack extension function.
 * Used to remove and a new shaped recipe for the given item.
 */
ItemStack.metaClass.tweakRecipe = { List<IIngredient>... input ->
    List<List<IIngredient>> recipe = [][] as IIngredient[][]

    input.each { recipe.add(it) }

    crafting.removeByOutput(delegate)
    crafting.addShaped(delegate, recipe)
}

/**
 * Overload of the ItemStack.tweakRecipe() extension function.
 * Used to remove and a new shapeless recipe for the given item.
 */
ItemStack.metaClass.tweakRecipe = { IIngredient... input ->
    List<IIngredient> recipe = [] as IIngredient[]

    input.each { recipe.add(it) }

    crafting.removeByOutput(delegate)
    crafting.addShapeless(delegate, recipe)
}

/**
 * ItemStack extension function.
 * Used to and a new shaped recipe for the given item.
 */
ItemStack.metaClass.addRecipe = { List<IIngredient>... input ->
    List<List<IIngredient>> recipe = [][] as IIngredient[][]

    input.each { recipe.add(it) }

    crafting.addShaped(delegate, recipe)
}

/**
 * Overload of the ItemStack.addRecipe() extension function.
 * Used to and a new shapeless recipe for the given item.
 */
ItemStack.metaClass.addRecipe = { IIngredient... input ->
    List<IIngredient> recipe = [] as IIngredient[]

    input.each { recipe.add(it) }

    crafting.addShapeless(delegate, recipe)
}
