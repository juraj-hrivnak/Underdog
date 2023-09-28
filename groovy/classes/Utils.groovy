package classes

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.GroovyHelper

import net.minecraft.util.text.translation.I18n
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

import org.codehaus.groovy.runtime.StackTraceUtils

/**
 * Utils
 */
class Utils {

    /**
     * Remove items
     */
    static void remove(IIngredient... inputs) {
        inputs.each { input ->
            // Hide from JEI
            mods.jei.hide(input)

            // Remove from every creative tab
            // removeItem()

            input.matchingStacks.each { itemStack ->
                // ToolTip
                itemStack.replaceToolTip("${Colors.RED}${Formats.BOLD}(${Formats.RESET}%itemName%${Colors.RED}${Formats.BOLD})")
                if (GroovyHelper.isDebug()) {
                    itemStack.addToolTip("Hidden & removed from " +
                            StackTraceUtils.deepSanitize(new Exception()).stackTrace[3].fileName)
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

}
