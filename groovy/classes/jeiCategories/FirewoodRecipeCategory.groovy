
import com.cleanroommc.groovyscript.GroovyScript
import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.compat.mods.jei.BaseCategory
import com.cleanroommc.groovyscript.registry.DummyRecipe

import java.util.Arrays
import java.util.Collections

import mezz.jei.api.IGuiHelper
import mezz.jei.api.gui.IDrawable
import mezz.jei.api.gui.IRecipeLayout
import mezz.jei.api.ingredients.IIngredients
import mezz.jei.api.ingredients.VanillaTypes
import mezz.jei.api.recipe.IRecipeWrapper

import net.minecraft.client.Minecraft
import net.minecraft.client.renderer.GlStateManager
import net.minecraft.client.resources.I18n
import net.minecraft.init.Items
import net.minecraft.item.ItemStack

import org.jetbrains.annotations.NotNull
import org.jetbrains.annotations.Nullable

class FirewoodRecipeCategory extends BaseCategory<FirewoodRecipeWrapper> {

    public static final String UID = 'underdog.log_splitting'

    private final IDrawable icon
    private final IDrawable hammer

    public FirewoodRecipeCategory(IGuiHelper guiHelper) {
        super(guiHelper, UID, 176, 56)
        this.icon = guiHelper.createDrawableIngredient(item('contenttweaker:chopped_oak_wood'))
        this.hammer = guiHelper.createDrawableIngredient(item('pyrotech:crude_hammer'))
    }

    @Override
    public void setRecipe(@NotNull IRecipeLayout recipeLayout, @NotNull FirewoodRecipeWrapper recipeWrapper, @NotNull IIngredients ingredients) {
        addItemSlot(recipeLayout, 0, true, 73, 25) // Log input slot
        addItemSlot(recipeLayout, 1, true, 73, 5) // Wedge input slot
        addItemSlot(recipeLayout, 3, true, 21, 5) // Hammer input slot
        addItemSlot(recipeLayout, 4, false, 125, 25) // Output slot
        addItemSlot(recipeLayout, 5, false, 145, 25) // 2nd output slot

        recipeLayout.getItemStacks().set(ingredients)
        setBackgrounds(recipeLayout.getItemStacks(), slot)
    }

    @Override
    public void drawExtras(@NotNull Minecraft minecraft) {
        minecraft.fontRenderer.drawSplitString(I18n.format('underdog.recipe.log_splitting'), 8, 30, 168, 0x404040)
        GlStateManager.color(1.0f, 1.0f, 1.0f, 1.0f)
        rightArrow.draw(minecraft, 46, 6)
        rightArrow.draw(minecraft, 96, 26)

        float iconScale = 0.5f

        GlStateManager.pushMatrix()
        GlStateManager.translate(46, 6, 0)
        GlStateManager.translate(8, 8, 0)
        GlStateManager.scale(iconScale, iconScale, 1)
        GlStateManager.translate(-8, -8, 0)
        this.hammer.draw(minecraft)
        GlStateManager.popMatrix()

        float woodScale = 0.5f
        GlStateManager.pushMatrix()
        GlStateManager.translate(96, 25, 0)
        GlStateManager.translate(8, 8, 0)
        GlStateManager.scale(iconScale, iconScale, 1)
        GlStateManager.translate(-8, -8, 0)
        this.icon.draw(minecraft)
        GlStateManager.popMatrix()
    }

    @Nullable
    @Override
    public IDrawable getIcon() {
        return icon
    }
}

class FirewoodRecipeWrapper implements IRecipeWrapper {

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
