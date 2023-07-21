
import net.minecraftforge.event.entity.player.ItemTooltipEvent

Map<ItemStack, String> toolTipsToReplace = [:]

/**
 * ItemStack extension function.
 * Used to replace all tooltips for the given item.
 * You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */
ItemStack.metaClass.replaceToolTip = { String toolTip ->
    toolTipsToReplace[delegate] = toolTip
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
}
