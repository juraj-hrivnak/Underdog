
import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient

/**
 * Note: You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */

/**
 * Replaces all tooltips for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.replaceTooltip = { String tooltip ->
    classes.ToolTips.tooltipsToReplace[delegate] = tooltip
}

/**
 * Adds a new tooltip for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addTooltip = { String tooltip ->
    if (delegate.hasNbt() && !delegate.nbt.isEmpty() && tooltip !in classes.ToolTips.tooltipsToAddWithNbt) {
        classes.ToolTips.tooltipsToAddWithNbt[delegate] = tooltip
    } else if (tooltip !in classes.ToolTips.tooltipsToAdd) {
        classes.ToolTips.tooltipsToAdd[delegate] = tooltip
    }
}

/**
 * Adds a new tooltip for all items in OreDict.
 * (Extension of OreDictIngredient)
 */
OreDictIngredient.metaClass.addTooltip = { String tooltip ->
    delegate.matchingStacks.each { itemStack ->
        if (itemStack != null) {
            if (itemStack.hasNbt() && !itemStack.nbt.isEmpty()) {
                classes.ToolTips.tooltipsToAddWithNbt[itemStack] = tooltip
            } else {
                classes.ToolTips.tooltipsToAdd[itemStack] = tooltip
            }
        }
    }
}

