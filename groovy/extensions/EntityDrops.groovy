
import net.minecraftforge.event.entity.living.LivingDropsEvent
import net.minecraftforge.fml.common.registry.EntityEntry

Map<EntityEntry, List<ItemStack>> entityDropsToAdd = [:]

EntityEntry.metaClass.addDrops = { ItemStack... input ->
    entityDropsToAdd[delegate] = items
}

event_manager.listen { LivingDropsEvent event ->
    if ((event.entity.world == null) || event.entity.world.isRemote()) {
        return
	}


}
