
import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient

import net.minecraftforge.event.entity.player.ItemTooltipEvent
import net.minecraftforge.items.ItemHandlerHelper

Map<ItemStack, String> toolTipsToReplace = [:]

Map<ItemStack, String> toolTipsToAddWithNbt = [:]
Map<ItemStack, String> toolTipsToAdd = [:]

/**
 * Note: You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */

/**
 * Replaces all tooltips for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.replaceToolTip = { String toolTip ->
    toolTipsToReplace[delegate] = toolTip
}

/**
 * Adds a new tooltip for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addToolTip = { String toolTip ->
    if (delegate.hasNbt() && !delegate.nbt.isEmpty()) {
        toolTipsToAddWithNbt[delegate] = toolTip
    } else {
        toolTipsToAdd[delegate] = toolTip
    }
}

/**
 * Adds a new tooltip for all items in OreDict.
 * (Extension of OreDictIngredient)
 */
OreDictIngredient.metaClass.addToolTip = { String toolTip ->
    delegate.matchingStacks.each { itemStack ->
        if (itemStack != null) {
            if (itemStack.hasNbt() && !itemStack.nbt.isEmpty()) {
                toolTipsToAddWithNbt[itemStack] = toolTip
            } else {
                toolTipsToAdd[itemStack] = toolTip
            }
        }
    }
}

event_manager.listen(EventPriority.LOWEST) { ItemTooltipEvent event ->
    toolTipsToReplace.each { itemStack, toolTip ->
        if (ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualToolTip = toolTip.replace('%itemName%', event.toolTip[0])
            List<String> itemToolTips = event.toolTip

            itemToolTips.clear()
            itemToolTips.add(actualToolTip.toString())
        }
    }

    toolTipsToAddWithNbt.each { itemStack, toolTip ->
        // Compare with nbt
        if (ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualToolTip = toolTip.replace('%itemName%', event.toolTip[0])
            List<String> itemToolTips = event.toolTip

            itemToolTips.add(actualToolTip.toString())
        }
    }

    toolTipsToAdd.each { itemStack, toolTip ->
        // Compare raw items
        if (ItemStack.areItemsEqual(event.itemStack, itemStack)) {
            String actualToolTip = toolTip.replace('%itemName%', event.toolTip[0])
            List<String> itemToolTips = event.toolTip

            itemToolTips.add(actualToolTip.toString())
        }
        // println(itemStack)
    }
}
