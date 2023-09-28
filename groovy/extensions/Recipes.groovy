
import classes.Replacer

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.ingredient.OrIngredient

import net.minecraftforge.items.ItemHandlerHelper

def printErrors = false
List<String> tweakedRecipes = []

/**
 * Tweak shaped recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.tweakRecipe = { List<IIngredient>... input ->
    // // Do not remove if tweaked before
    // if (delegate.itemRaw.registryName.toString() !in tweakedRecipes) {
    //     crafting.removeByOutput(delegate, printErrors)
    //     tweakedRecipes << delegate.itemRaw.registryName.toString()
    // }
    crafting.shapedBuilder()
        .output(delegate)
        .matrix(input.toList())
        .register().tap { Replacer.ingore(it) }
}

/**
 * Tweak shapeless recipe.
 * (Overload of the function above)
 */
ItemStack.metaClass.tweakRecipe = { IIngredient... input ->
    // // Do not remove if tweaked before
    // if (delegate.itemRaw.registryName.toString() !in tweakedRecipes) {
    //     crafting.removeByOutput(delegate, printErrors)
    //     tweakedRecipes << delegate.itemRaw.registryName.toString()
    // }
    crafting.shapelessBuilder()
        .output(delegate)
        .input(input.toList())
        .register().tap { Replacer.ingore(it) }
}

/**
 * Add shaped recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addRecipe = { List<IIngredient>... input ->
    crafting.shapedBuilder()
        .output(delegate)
        .matrix(input.toList())
        .register().tap { Replacer.ingore(it) }
}

/**
 * Add shapeless recipe.
 * (Overload of the function above)
 */
ItemStack.metaClass.addRecipe = { IIngredient... input ->
    crafting.shapelessBuilder()
        .output(delegate)
        .input(input.toList())
        .register().tap { Replacer.ingore(it) }
}

/**
 * Remove recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.removeRecipe = { ->
    crafting.removeByOutput(delegate, printErrors)
}

IIngredient.metaClass.addPasteRecipe = { String... input ->
    List<String> pastes = []

    input.each { pastes.add(it) }

    mods.advancedmortars.Mortar.recipeBuilder()
        .stone()
        .duration(2)
        .output(item('cuisine:ingredient').withNbt([
            characteristics: [],
            effects: pastes[1] ?: '',
            material: pastes[0],
            form: 'PASTE',
            doneness: 0
        ]))
        .input(delegate)
        .register()
}

class Intertwiner {

    static ItemStack itemStack
    static matrix

    static with = { Map<String, IIngredient> map ->
        crafting.shapedBuilder()
            .output(itemStack)
            .matrix(matrix)
            .key(map)
            .register().tap { Replacer.ingore(it) }
        return this
    }

}

ItemStack.metaClass.tweakRecipe = { String... matrix ->
    // // Do not remove if tweaked before
    // if (delegate.itemRaw.registryName.toString() !in tweakedRecipes) {
    //     crafting.removeByOutput(delegate, printErrors)
    //     tweakedRecipes << delegate.itemRaw.registryName.toString()
    // }
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}

ItemStack.metaClass.addRecipe = { String... matrix ->
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}

IIngredient.metaClass.without = { ItemStack... input ->
    OrIngredient orIngredient = new OrIngredient()
    delegate.matchingStacks.each { stack ->
        input.each { stack2 ->
            if (!ItemHandlerHelper.canItemStacksStack(stack, stack2)) {
                orIngredient.addIngredient((IIngredient) (Object) stack)
            }
        }
    }
    return orIngredient
}
