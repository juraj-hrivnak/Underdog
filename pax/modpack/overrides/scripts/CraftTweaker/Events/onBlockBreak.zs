
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.server.IServer;
import crafttweaker.world.IFacing;
import mods.zenutils.DelayManager;
import mods.contenttweaker.Commands;


events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

    val blockBreakTransforms as IBlockState[IBlockState] = {
        <blockstate:dynamictrees:oakbranch:radius=7>                    : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:oakbranch:radius=7>                    : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:oakbranchx:radius=7>                   : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:sprucebranch:radius=7>                 : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:sprucebranchx:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:birchbranch:radius=7>                  : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:junglebranch:radius=7>                 : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:junglebranchx:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:acaciabranch:radius=7>                 : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:darkoakbranch:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictrees:darkoakbranchx:radius=7>               : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:magicbranch:radius=7>               : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:umbranbranch:radius=7>              : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:umbranbranchx:radius=7>             : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:firbranch:radius=7>                 : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:firbranchx:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:cherrybranch:radius=7>              : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:deadbranch:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:jacarandabranch:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:redwoodbranch:radius=7>             : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:redwoodbranchx:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:willowbranch:radius=7>              : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:hellbarkbranch:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:pinebranch:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:palmbranch:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:mahoganybranch:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:mangrovebranch:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:ebonybranch:radius=7>               : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesbop:eucalyptusbranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesphc:cinnamonbranch:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesphc:maplebranch:radius=7>               : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesphc:paperbarkcutbranch:radius=7>        : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesphc:paperbarkbranch:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesphc:palmbranch:radius=7>                : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:silverlimebranch:radius=7>     : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:silverlimebranchx:radius=7>    : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:walnutbranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:walnutbranchx:radius=7>        : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:chestnutbranch:radius=7>       : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:chestnutbranchx:radius=7>      : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:cherrybranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:lemonbranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:plumbranch:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:maplebranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:larchbranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:bullpinebranch:radius=7>       : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:coastsequoiabranch:radius=7>   : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:teakbranch:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:ipebranch:radius=7>            : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:ipebranchx:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:kapokbranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:kapokbranchx:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:ebonybranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:zebrawoodbranch:radius=7>      : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:zebrawoodbranchx:radius=7>     : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:merantibranch:radius=7>        : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:merantibranchx:radius=7>       : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:desertacaciabranch:radius=7>   : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:padaukbranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:balsabranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:cocobolobranch:radius=7>       : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:wengebranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:wengebranchx:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:baobabbranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:baobabbranchx:radius=7>        : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:mahoebranch:radius=7>          : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:willowbranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:sipiribranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:sipiribranchx:radius=7>        : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:papayabranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:palmbranch:radius=7>           : <blockstate:pyrotech:chopping_block>,
        <blockstate:dynamictreesforestry:poplarbranch:radius=7>         : <blockstate:pyrotech:chopping_block>,
        <blockstate:rustic:olivebranch:radius=7>                        : <blockstate:pyrotech:chopping_block>,
        <blockstate:rustic:ironwoodbranch:radius=7>                     : <blockstate:pyrotech:chopping_block>,
    } as IBlockState[IBlockState];

    if ((blockBreakTransforms.keySet has event.blockState) &&
        (event.world.getBlockState(event.position.getOffset(IFacing.down, 1)) != <blockstate:minecraft:air>)) {

        DelayManager.addDelayWork(function() {
            event.world.setBlockState(blockBreakTransforms[event.blockState], event.position);
        }, 2);
    }


    if (event.blockState == <blockstate:crocodilite:stone>) {
		
		if (event.world.getBlockState(event.position.getOffset(IFacing.up, 1)) == <blockstate:contenttweaker:pick_up_block>) {

			// Replacing the ~ ~1 ~ block
			event.world.setBlockState(<blockstate:minecraft:air>, event.position.getOffset(IFacing.up, 1));
			Commands.call("particle endRod " + event.x + " " + (event.y - 0.8) + " " + event.z + " 0.1 0.1 0.1 0.08 3 normal @a", event.player, event.world);
		}
	}
});
