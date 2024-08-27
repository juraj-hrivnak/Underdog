
import com.cleanroommc.groovyscript.api.IIngredient

import net.minecraftforge.event.furnace.FurnaceFuelBurnTimeEvent
import net.minecraftforge.items.ItemHandlerHelper

Map<ItemStack, int> burnTimesToAdd = [:]

/**
 * Set burn time.
 * (Extension of IIngredient)
 */
IIngredient.metaClass.setBurnTime = { int burnTime ->
    delegate.matchingStacks.each { itemStack ->
        burnTimesToAdd[itemStack] = burnTime
    }
}

event_manager.listen(EventPriority.LOWEST) { FurnaceFuelBurnTimeEvent event ->
    burnTimesToAdd.each { itemStack, burnTime ->
        if (event != null && ItemHandlerHelper.canItemStacksStack(event.itemStack, itemStack)) {
            event.setBurnTime(burnTime)
        }
    }
}
