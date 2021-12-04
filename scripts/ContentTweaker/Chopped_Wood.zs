#priority 10
#loader contenttweaker

import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.AxisAlignedBB;

function createChoppedWoodBlock(name as string, drop as IItemStack) {
    val x = VanillaFactory.createBlock(name, <blockmaterial:wood>);
    x.fullBlock = false;
    x.lightOpacity = 100;
    x.translucent = false;
    x.lightValue = 0;
    x.blockHardness = 0.2;
    x.blockResistance = 1.0;
    x.toolClass = "axe";
    x.toolLevel = 0;
    x.blockSoundType = <soundtype:wood>;
    x.setCreativeTab(<creativetab:decorations>);
    x.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(drop * 6);
        return;
    });
    x.register();
}

createChoppedWoodBlock("chopped_oak_wood"        , <item:contenttweaker:firewood_oak>         );
createChoppedWoodBlock("chopped_spruce_wood"     , <item:contenttweaker:firewood_spruce>      );
createChoppedWoodBlock("chopped_birch_wood"      , <item:contenttweaker:firewood_birch>       );
createChoppedWoodBlock("chopped_jungle_wood"     , <item:contenttweaker:firewood_jungle>      );
createChoppedWoodBlock("chopped_acacia_wood"     , <item:contenttweaker:firewood_acacia>      );
createChoppedWoodBlock("chopped_dark_oak_wood"   , <item:contenttweaker:firewood_dark_oak>    );

createChoppedWoodBlock("chopped_sacred_oak_wood" , <item:contenttweaker:firewood_sacred_oak>  );
createChoppedWoodBlock("chopped_cherry_wood"     , <item:contenttweaker:firewood_cherry>      );
createChoppedWoodBlock("chopped_umbran_wood"     , <item:contenttweaker:firewood_umbran>      );
createChoppedWoodBlock("chopped_fir_wood"        , <item:contenttweaker:firewood_fir>         );
createChoppedWoodBlock("chopped_ethereal_wood"   , <item:contenttweaker:firewood_ethereal>    );
createChoppedWoodBlock("chopped_magic_wood"      , <item:contenttweaker:firewood_magic>       );
createChoppedWoodBlock("chopped_mangrove_wood"   , <item:contenttweaker:firewood_mangrove>    );
createChoppedWoodBlock("chopped_palm_wood"       , <item:contenttweaker:firewood_palm>        );
createChoppedWoodBlock("chopped_redwood_wood"    , <item:contenttweaker:firewood_redwood>     );
createChoppedWoodBlock("chopped_willow_wood"     , <item:contenttweaker:firewood_willow>      );
createChoppedWoodBlock("chopped_pine_wood"       , <item:contenttweaker:firewood_pine>        );
createChoppedWoodBlock("chopped_hellbark_wood"   , <item:contenttweaker:firewood_hellbark>    );
createChoppedWoodBlock("chopped_jacaranda_wood"  , <item:contenttweaker:firewood_jacaranda>   );
createChoppedWoodBlock("chopped_mahogany_wood"   , <item:contenttweaker:firewood_mahogany>    );
createChoppedWoodBlock("chopped_ebony_wood"      , <item:contenttweaker:firewood_ebony>       );
createChoppedWoodBlock("chopped_eucalyptus_wood" , <item:contenttweaker:firewood_eucalyptus>  );

val wedge = VanillaFactory.createBlock("splitting_wedge", <blockmaterial:iron>);
    wedge.setAxisAlignedBB(AxisAlignedBB.create(0.35F, -0.1F, 0.35F, 0.65F, 0.4F, 0.65F));
    wedge.toolClass = "pickaxe";
    wedge.toolLevel = 0;
    wedge.fullBlock = false;
    wedge.lightOpacity = 0;
    wedge.enumBlockRenderType = "MODEL";
    wedge.gravity = true;
    wedge.blockLayer = "CUTOUT_MIPPED";
    wedge.replaceable = false;
    wedge.blockHardness = 2.0;
    wedge.blockSoundType = <soundtype:metal>;
    wedge.setCreativeTab(<creativetab:decorations>);
    wedge.passable = true;
    wedge.register();

val wedgeHammered = VanillaFactory.createBlock("splitting_wedge_hammered", <blockmaterial:iron>);
    wedgeHammered.setAxisAlignedBB(AxisAlignedBB.create(0.35F, -0.1F, 0.35F, 0.65F, 0.1F, 0.65F));
    wedgeHammered.toolClass = "pickaxe";
    wedgeHammered.toolLevel = 0;
    wedgeHammered.fullBlock = false;
    wedgeHammered.lightOpacity = 0;
    wedgeHammered.enumBlockRenderType = "MODEL";
    wedgeHammered.gravity = false;
    wedgeHammered.blockLayer = "CUTOUT_MIPPED";
    wedgeHammered.replaceable = false;
    wedgeHammered.blockHardness = 2.0;
    wedgeHammered.blockSoundType = <soundtype:metal>;
    wedgeHammered.setCreativeTab(<creativetab:decorations>);
    wedgeHammered.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:contenttweaker:splitting_wedge>);
        return;
    });
    wedgeHammered.passable = true;
    wedgeHammered.register();
    