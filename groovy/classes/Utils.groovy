package classes

import classes.ToolTips

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.GroovyHelper
import com.cleanroommc.groovyscript.helper.recipe.RecipeName
import com.cleanroommc.tabulator.common.TabulatorAPI

import net.minecraftforge.fml.common.Loader
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

import org.codehaus.groovy.runtime.StackTraceUtils
import org.jetbrains.annotations.Nullable

class Utils {

    /**
     * Remove recipes from items & hide items
     */
    static void purge(IIngredient... inputs) {

        inputs.each { input ->

            // Hide from JEI
            mods.jei.ingredient.hide(input)

            input.matchingStacks.each { itemStack ->

                // Replace tooltip
                ToolTips.replaceTooltip(itemStack, "${Colors.RED}${Formats.BOLD}(${Formats.RESET}%itemName%${Colors.RED}${Formats.BOLD})")

                if (GroovyHelper.isDebug()) {
                    // Add debug tooltip (Dev only)
                    ToolTips.addTooltip(itemStack, "Hidden & removed from " +
                            StackTraceUtils.deepSanitize(new Exception()).stackTrace[7].fileName)
                } else {
                    // Remove from every creative tab (Production only)
                    TabulatorAPI.removeItem(itemStack)
                }

                // Remove recipe
                itemStack.removeRecipe()
                itemStack.removeFurnaceRecipe()
            }
        }
    }

    /** Remove crafting recipes from items */
    static void removeRecipe(IIngredient... inputs) {

        inputs.each { input ->

            input.matchingStacks.each { itemStack ->

                // Remove recipe
                itemStack.removeRecipe()
            }
        }
    }

    /** Remove furnace recipes from items */
    static void removeFurnaceRecipe(IIngredient... inputs) {

        inputs.each { input ->

            input.matchingStacks.each { itemStack ->

                // Remove recipe
                itemStack.removeFurnaceRecipe()
            }
        }
    }

    /** Generate Registry Name resource location */
    static ResourceLocation generateRegistryName(ItemStack input) {

        String prefix = "${input.getItem().registryName.path}_${input.metadata}"

        return RecipeName.generateRl(prefix)
    }

    /** Generate Registry Name string */
    static String generateRegistryNameString(ItemStack input) {

        String prefix = "${input.getItem().registryName.path}_${input.metadata}"

        return RecipeName.generate(prefix)
    }

    /** Get mod name from ItemStack */
    @Nullable
    static String getModName(ItemStack itemStack) {

        if (itemStack.isEmpty()) return null

        String modId = itemStack.item.getCreatorModId(itemStack)
        if (modId == null) return null

        return Loader.instance().getIndexedModList().get(modId)?.getName()
    }
}
