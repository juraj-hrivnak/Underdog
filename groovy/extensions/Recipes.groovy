
import com.cleanroommc.groovyscript.api.IIngredient

/**
 * Tweaks a shaped recipe for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.tweakRecipe = { List<IIngredient>... input ->
    crafting.removeByOutput(delegate)
    crafting.addShaped(delegate, input.collect { it })
}

/**
 * Tweaks a shapeless recipe for item.
 * (Overload of the function above)
 */
ItemStack.metaClass.tweakRecipe = { IIngredient... input ->
    crafting.removeByOutput(delegate)
    crafting.addShapeless(delegate, input.toList())
}

/**
 * Adds a new shaped recipe for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addRecipe = { List<IIngredient>... input ->
    crafting.addShaped(delegate, input.collect { it })
}

/**
 * Add a new shapeless recipe for item.
 * (Overload of the function above)
 */
ItemStack.metaClass.addRecipe = { IIngredient... input ->
    crafting.addShapeless(delegate, input.toList())
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
            .register()
        return this
    }

}

ItemStack.metaClass.tweakRecipe = { String... matrix ->
    crafting.removeByOutput(delegate)
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}

ItemStack.metaClass.addRecipe = { String... matrix ->
    return new Intertwiner(itemStack: delegate, matrix: matrix)
}
