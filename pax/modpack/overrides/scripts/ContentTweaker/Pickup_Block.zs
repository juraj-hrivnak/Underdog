
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.AxisAlignedBB;

val pickUpBlock = VanillaFactory.createBlock("pick_up_block", <blockmaterial:iron>);
    pickUpBlock.setAxisAlignedBB(AxisAlignedBB.create(0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F));
    pickUpBlock.toolClass = "none";
    pickUpBlock.toolLevel = 0;
    pickUpBlock.fullBlock = false;
    pickUpBlock.lightOpacity = 0;
    pickUpBlock.lightValue = 0.01;
    pickUpBlock.enumBlockRenderType = "MODEL";
    pickUpBlock.gravity = false;
    pickUpBlock.blockLayer = "TRANSLUCENT";
    pickUpBlock.replaceable = false;
    pickUpBlock.blockHardness = 0.0;
    pickUpBlock.blockSoundType = <soundtype:metal>;
    pickUpBlock.setCreativeTab(<creativetab:decorations>);
    pickUpBlock.passable = true;
    pickUpBlock.register();
