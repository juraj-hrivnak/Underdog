
// import net.minecraft.entity.item.EntityItem
// import net.minecraftforge.event.entity.living.LivingDropsEvent
// import net.minecraftforge.fml.common.registry.EntityEntry

// Map<EntityEntry, List<ItemStack>> entityDropsToAdd = [:]
// def entityDropsToRemove = []

// EntityEntry.metaClass.addDrops = { ItemStack... input ->
//     entityDropsToAdd[delegate] = input
// }

// EntityEntry.metaClass.tweakDrops = { ItemStack... input ->
//     entityDropsToRemove << delegate
//     entityDropsToAdd[delegate] = input
// }

// event_manager.listen { LivingDropsEvent event ->
//     if (event.entity.world == null || event.entity.world.isRemote()) {
//         return
// 	}

//     for (x in entityDropsToAdd) {
//         def entity = x.key
//         def items = x.value

//         log.info("${entity.name} : ${event.entity.name}")

//         if (event.entity == null && entity.cls != event.entity) continue

//         if (entity in entityDropsToRemove) event.drops.clear()

//         for (item in items) {
//             event.drops.add(new EntityItem(
//                 event.entity.world, event.entity.posX, event.entity.posY, event.entity.posZ, item
//             ))
//         }
//     }
// }
