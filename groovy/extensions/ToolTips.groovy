
import classes.Colors
import classes.Formats
import classes.Utils

import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient

import net.minecraft.client.Minecraft
import net.minecraftforge.event.entity.player.ItemTooltipEvent
import net.minecraftforge.items.ItemHandlerHelper

Map<ItemStack, String> tooltipsToReplace = [:]

Map<ItemStack, String> tooltipsToAddWithNbt = [:]
Map<ItemStack, String> tooltipsToAdd = [:]

/**
 * Note: You can add %itemName% to the input, and it will be
 * replaced with the item name.
 */

/**
 * Replaces all tooltips for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.replaceTooltip = { String tooltip ->
    tooltipsToReplace[delegate] = tooltip
}

/**
 * Adds a new tooltip for item.
 * (Extension of ItemStack)
 */
ItemStack.metaClass.addTooltip = { String tooltip ->
    if (delegate.hasNbt() && !delegate.nbt.isEmpty() && tooltip !in tooltipsToAddWithNbt) {
        tooltipsToAddWithNbt[delegate] = tooltip
    } else if (tooltip !in tooltipsToAdd) {
        tooltipsToAdd[delegate] = tooltip
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
                tooltipsToAddWithNbt[itemStack] = tooltip
            } else {
                tooltipsToAdd[itemStack] = tooltip
            }
        }
    }
}

event_manager.listen(EventPriority.LOWEST) { ItemTooltipEvent event ->
    tooltipsToReplace.each { itemStack, tooltip ->
        if (ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.clear()
            itemTooltips.add(actualTooltip.toString())
        }
    }

    tooltipsToAddWithNbt.each { itemStack, tooltip ->
        // Compare with nbt
        if (ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.add(actualTooltip.toString())
        }
    }

    tooltipsToAdd.each { itemStack, tooltip ->
        // Compare raw items
        if (ItemStack.areItemsEqual(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.add(actualTooltip.toString())
        }
    }

    if (Minecraft.getMinecraft().currentScreen?.isShiftKeyDown()) {
        List<String> itemTooltips = event.toolTip
        def modName = Utils.getModName(event.itemStack)

        if (modName != null) {

            def tooltip = "${Colors.AQUA}${Formats.ITALIC}$modName"

            if (tooltip !in itemTooltips) {
                itemTooltips.add(0, tooltip)
            }
        }
    }
}

