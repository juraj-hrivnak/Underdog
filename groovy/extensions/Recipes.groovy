
import classes.io.Replacer

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.ingredient.OrIngredient

import net.minecraftforge.items.ItemHandlerHelper

def printErrors = false

/**
 * Tweak shaped recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.tweakRecipe = { List<IIngredient>... input ->
    crafting.removeByOutput(delegate, printErrors)
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
    crafting.removeByOutput(delegate, printErrors)
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

/**
 * Tweak shaped recipe using a matrix.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.tweakRecipe = { String... matrix ->
    crafting.removeByOutput(delegate, printErrors)
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}

/**
 * Add shaped recipe using a matrix.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addRecipe = { String... matrix ->
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}

/**
 * Returns a new ingredient without the items specified.
 * (Extension of IIngredient)
 */
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
