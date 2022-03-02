
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.server.IServer;
import crafttweaker.world.IFacing;
import mods.zenutils.DelayManager;
import mods.contenttweaker.Commands;
import crafttweaker.world.IBiome;
import crafttweaker.world.IBiomeType;


events.onEntityLivingFall(function(event as crafttweaker.event.EntityLivingFallEvent) {
	if (isNull(event.entity.world) || event.entity.world.isRemote()) {
		return;
	}

	event.damageMultiplier = 3.0f;

	val random = event.entity.world.random;

	event.entity.motionZ = event.entity.lookingDirection.z * random.nextDouble(0.5, 1.2);
	event.entity.motionX = event.entity.lookingDirection.x * random.nextDouble(0.5, 1.2);

	// Todo: check for biome
	// val biome = event.entity.world.getBiome(event.entity.position).types;
	// for i in biome {
	// 	if i.name == "MOUNTAIN" {
	// 		return mountain[0] = true;
	// 	}
	// }
	// if mountain[0] == true {
	// event.entityLivingBase.addPotionEffect(<potion:immersiveengineering:slippery>.makePotionEffect(random.nextInt(50, 200), random.nextInt(1, 4), false, true));
	// }

});
