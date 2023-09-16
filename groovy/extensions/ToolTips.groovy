
import net.minecraftforge.event.entity.player.ItemTooltipEvent

Map<ItemStack, String> toolTipsToReplace = [:]

Map<ItemStack, String> toolTipsToAdd = [:]

/**
 * Replaces all tooltips for item.
 * (Extension of ItemStack)
 *
 * You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */
ItemStack.metaClass.replaceToolTip = { String toolTip ->
    toolTipsToReplace[delegate] = toolTip
}

/**
 * Adds a new tooltip for item.
 * (Extension of ItemStack)
 *
 * You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */
ItemStack.metaClass.addToolTip = { String toolTip ->
    toolTipsToAdd[delegate] = toolTip
}

event_manager.listen(EventPriority.LOWEST) { ItemTooltipEvent event ->
    toolTipsToReplace.each { itemStack, toolTip ->
        if (ItemStack.areItemsEqual(event.itemStack, itemStack)) {
            String actualToolTip = toolTip.replace('%itemName%', event.toolTip[0])
            List<String> itemToolTips = event.toolTip

            itemToolTips.clear()
            itemToolTips.add(actualToolTip.toString())
        }
    }

    toolTipsToAdd.each { itemStack, toolTip ->
        if (ItemStack.areItemsEqual(event.itemStack, itemStack)) {
            String actualToolTip = toolTip.replace('%itemName%', event.toolTip[0])
            List<String> itemToolTips = event.toolTip

            itemToolTips.add(actualToolTip.toString())
        }
    }
}
