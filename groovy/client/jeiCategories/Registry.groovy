// side: client

import classes.recipes.Splitting

import com.cleanroommc.groovyscript.api.IIngredient

mods.jei.category.categoryBuilder()
    .id(FirewoodRecipeCategory.UID)
    .category(guiHelper -> new FirewoodRecipeCategory(guiHelper))
    .wrapper(
        Splitting.recipes.collect {
            new FirewoodRecipeWrapper(
                it.input as IIngredient, it.output, it.wedge as IIngredient, it.secondaryOutput
            )
        }
    )
    .register()

