package classes.recipes

import com.cleanroommc.groovyscript.api.IIngredient

import org.jetbrains.annotations.Nullable

class SplittingRecipe {

    IIngredient input
    ItemStack output
    IIngredient wedge
    ItemStack secondaryOutput = ItemStack.EMPTY

    public SplittingRecipe(
        IIngredient input,
        ItemStack output,
        IIngredient wedge
    ) {
        this.input = input
        this.output = output
        this.wedge = wedge
    }

    public SplittingRecipe(
        IIngredient input,
        ItemStack output,
        IIngredient wedge,
        ItemStack secondaryOutput
    ) {
        this.input = input
        this.output = output
        this.wedge = wedge
        this.secondaryOutput = secondaryOutput
    }

}
