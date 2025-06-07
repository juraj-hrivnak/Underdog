// side: client

import com.cleanroommc.groovyscript.api.IIngredient

import java.util.Arrays

import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import mezz.jei.api.recipe.IRecipeWrapper

import net.minecraft.client.Minecraft
import net.minecraft.item.ItemStack

import org.jetbrains.annotations.NotNull

public class FirewoodRecipeWrapper implements IRecipeWrapper {

    private final IIngredient input
    private final ItemStack output
    private final IIngredient wedge
    private final ItemStack secondaryOutput = ItemStack.EMPTY

    public FirewoodRecipeWrapper(
        IIngredient input,
        ItemStack output,
        IIngredient wedge
    ) {
        this.input = input
        this.output = output
        this.wedge = wedge
    }

    public FirewoodRecipeWrapper(
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

    @Override
    public void getIngredients(IIngredients ingredients) {
        List<List<ItemStack>> inputs = []
        inputs << Arrays.asList(this.input.getMatchingStacks())
        inputs << Arrays.asList(this.wedge.getMatchingStacks())
        inputs << Arrays.asList(ore('toolHammer').getMatchingStacks())

        List<List<ItemStack>> outputs = []
        outputs << Arrays.asList(output)
        outputs << Arrays.asList(secondaryOutput)

        ingredients.setInputLists(VanillaTypes.ITEM, inputs)
        ingredients.setOutputLists(VanillaTypes.ITEM, outputs)
    }

    @Override
    public void drawInfo(@NotNull Minecraft minecraft, int recipeWidth, int recipeHeight, int mouseX, int mouseY) {

    }

}
