
import classes.io.Replacer
import classes.recipes.MatrixRecipe

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.ingredient.OrIngredient

import net.minecraftforge.items.ItemHandlerHelper

def printErrors = false

// -- TWEAK --

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

// -- ADD --

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

// -- REMOVE --

/**
 * Remove crafting recipe.
 * (Extension of ItemStack)
 */
String.metaClass.removeRecipe = { ->
    crafting.remove(delegate)
}

/**
 * Remove crafting recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.removeRecipe = { ->
    crafting.removeByOutput(delegate, printErrors)
}

/**
 * Remove furnace recipe.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.removeFurnaceRecipe = { ->
    furnace.removeByInput(delegate, printErrors)
}

// -- MATRIX --

/**
 * Tweak shaped recipe using a matrix.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.tweakRecipe = { String... matrix ->
    crafting.removeByOutput(delegate, printErrors)
    return new MatrixRecipe(itemStack: delegate, matrix: matrix)
}

/**
 * Add shaped recipe using a matrix.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addRecipe = { String... matrix ->
    return new MatrixRecipe(itemStack: delegate, matrix: matrix)
}

// -- INGREDIENT --

/**
 * Returns a new OrIngredient without the items specified.
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

// -- SPECIAL --

IIngredient.metaClass.surround = { IIngredient input ->
    List<List<IIngredient>> surrounded = [
        [delegate, delegate, delegate],
        [delegate, input   , delegate],
        [delegate, delegate, delegate]
    ]
    return surrounded
}