package classes

import com.cleanroommc.groovyscript.api.IIngredient
import org.codehaus.groovy.runtime.StackTraceUtils

/**
 * Utils
 */
class Utils {

    /**
     * Hide items
     */
    static void hide(IIngredient... inputs) {
        inputs.each { input ->
            // Hide from JEI
            mods.jei.hide(input)

            // Remove from every creative tab
            // removeItem()

            // ToolTip
            input.matchingStacks.each { itemStack ->
                itemStack.replaceToolTip("${Colors.RED}${Formats.BOLD}Hidden " +
                    "(${Formats.RESET}%itemName%${Colors.RED}${Formats.BOLD})")
                if (isDebug()) {
                    itemStack.addToolTip("Hidden from ${StackTraceUtils.deepSanitize(new Exception()).stackTrace[3].fileName}")
                }
            }
        }
    }

}
