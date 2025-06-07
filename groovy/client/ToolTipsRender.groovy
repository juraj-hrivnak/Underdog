// side: client

import classes.Colors
import classes.Formats
import classes.ToolTips
import classes.Utils

import net.minecraft.client.Minecraft
import net.minecraftforge.event.entity.player.ItemTooltipEvent
import net.minecraftforge.items.ItemHandlerHelper

event_manager.listen(EventPriority.LOWEST) { ItemTooltipEvent event ->

    if (event?.entity?.world?.isRemote == false) return

    ToolTips.tooltipsToReplace.each { itemStack, tooltip ->
        if (event != null && ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.clear()
            itemTooltips.add(actualTooltip.toString())
        }
    }

    ToolTips.tooltipsToAddWithNbt.each { itemStack, tooltip ->
        // Compare with nbt
        if (event != null && ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.add(actualTooltip.toString())
        }
    }

    ToolTips.tooltipsToAdd.each { itemStack, tooltip ->
        // Compare raw items
        if (event != null && ItemStack.areItemsEqual(event.itemStack, itemStack)) {
            String actualTooltip = tooltip.replace('%itemName%', event.toolTip[0])
            List<String> itemTooltips = event.toolTip

            itemTooltips.add(actualTooltip.toString())
        }
    }

    // Shift tooltips
    if (event != null && Minecraft.getMinecraft().currentScreen?.isShiftKeyDown()) {
        List<String> itemTooltips = event.toolTip

        // Handle mod name tooltips
        Utils.getModName(event.itemStack)?.tap {
            String tooltip = "${Colors.BLUE}${Formats.ITALIC}${Formats.BOLD}$it"

            if (tooltip !in itemTooltips) itemTooltips.add(1, tooltip.toString())
        }
    }
}

