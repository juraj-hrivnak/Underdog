package utils

import com.cleanroommc.groovyscript.api.IIngredient

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
            }
        }
    }

}
