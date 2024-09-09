package classes.recipes

import classes.io.Replacer

import com.cleanroommc.groovyscript.api.IIngredient

class MatrixRecipe {

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