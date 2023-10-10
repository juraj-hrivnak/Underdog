package classes

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.GroovyHelper
import com.cleanroommc.tabulator.common.TabulatorAPI

import net.minecraft.util.text.translation.I18n
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

import org.codehaus.groovy.runtime.StackTraceUtils

class Utils {

    /**
     * Remove and hide items
     */
    static void rmh(IIngredient... inputs) {
        inputs.each { input ->
            // Hide from JEI
            mods.jei.hide(input)

            input.matchingStacks.each { itemStack ->
                // Replace tooltip
                itemStack.replaceToolTip("${Colors.RED}${Formats.BOLD}(${Formats.RESET}%itemName%${Colors.RED}${Formats.BOLD})")

                if (GroovyHelper.isDebug()) {
                    // Add debug tooltip (Dev only)
                    itemStack.addToolTip("Hidden & removed from " +
                            StackTraceUtils.deepSanitize(new Exception()).stackTrace[3].fileName)
                } else {
                    // Remove from every creative tab (Production only)
                    TabulatorAPI.removeItem()
                }

                // Remove recipe
                itemStack.removeRecipe()
            }
        }
    }

    /**
     * Localize translation key
     */
    @SideOnly(Side.CLIENT)
    static String localize(String key) {
        return I18n.translateToLocal(key)
    }

    private static int generatedRecipes = 0

    /**
     * Generate resource location
     */
    static ResourceLocation generateRegistryName(ItemStack input) {
        String suffix = "${input.itemRaw.registryName.path}_${input.metadata}_no.${generatedRecipes}"
        generatedRecipes++
        return new ResourceLocation(GroovyHelper.getPackId(), suffix)
    }

}
