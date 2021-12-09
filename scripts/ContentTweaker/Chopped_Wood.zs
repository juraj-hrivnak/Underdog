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

createChoppedWoodBlock("chopped_rustic_olive"    , <item:contenttweaker:rustic_firewood_olive>         );
createChoppedWoodBlock("chopped_rustic_ironwood" , <item:contenttweaker:rustic_firewood_ironwood>      );

createChoppedWoodBlock("chopped.larch"           , <item:contenttweaker:forestry_firewood_larch>       );
createChoppedWoodBlock("chopped.teak"            , <item:contenttweaker:forestry_firewood_teak>        );
createChoppedWoodBlock("chopped.acacia"          , <item:contenttweaker:forestry_firewood_acacia>      );
createChoppedWoodBlock("chopped.lime"            , <item:contenttweaker:forestry_firewood_lime>        );
createChoppedWoodBlock("chopped.chestnut"        , <item:contenttweaker:forestry_firewood_chestnut>    );
createChoppedWoodBlock("chopped.wenge"           , <item:contenttweaker:forestry_firewood_wenge>       );
createChoppedWoodBlock("chopped.baobab"          , <item:contenttweaker:forestry_firewood_baobab>      );
createChoppedWoodBlock("chopped.sequoia"         , <item:contenttweaker:forestry_firewood_sequoia>     );
createChoppedWoodBlock("chopped.kapok"           , <item:contenttweaker:forestry_firewood_kapok>       );
createChoppedWoodBlock("chopped.ebony"           , <item:contenttweaker:forestry_firewood_ebony>       );
createChoppedWoodBlock("chopped.mahogany"        , <item:contenttweaker:forestry_firewood_mahogany>    );
createChoppedWoodBlock("chopped.balsa"           , <item:contenttweaker:forestry_firewood_balsa>       );
createChoppedWoodBlock("chopped.willow"          , <item:contenttweaker:forestry_firewood_willow>      );
createChoppedWoodBlock("chopped.walnut"          , <item:contenttweaker:forestry_firewood_walnut>      );
createChoppedWoodBlock("chopped.greenheart"      , <item:contenttweaker:forestry_firewood_greenheart>  );
createChoppedWoodBlock("chopped.cherry"          , <item:contenttweaker:forestry_firewood_cherry>      );
createChoppedWoodBlock("chopped.mahoe"           , <item:contenttweaker:forestry_firewood_mahoe>       );
createChoppedWoodBlock("chopped.poplar"          , <item:contenttweaker:forestry_firewood_poplar>      );
createChoppedWoodBlock("chopped.palm"            , <item:contenttweaker:forestry_firewood_palm>        );
createChoppedWoodBlock("chopped.papaya"          , <item:contenttweaker:forestry_firewood_papaya>      );
createChoppedWoodBlock("chopped.pine"            , <item:contenttweaker:forestry_firewood_pine>        );
createChoppedWoodBlock("chopped.plum"            , <item:contenttweaker:forestry_firewood_plum>        );
createChoppedWoodBlock("chopped.maple"           , <item:contenttweaker:forestry_firewood_maple>       );
createChoppedWoodBlock("chopped.citrus"          , <item:contenttweaker:forestry_firewood_citrus>      );
createChoppedWoodBlock("chopped.giganteum"       , <item:contenttweaker:forestry_firewood_giganteum>   );
createChoppedWoodBlock("chopped.ipe"             , <item:contenttweaker:forestry_firewood_ipe>         );
createChoppedWoodBlock("chopped.padauk"          , <item:contenttweaker:forestry_firewood_padauk>      );
createChoppedWoodBlock("chopped.cocobolo"        , <item:contenttweaker:forestry_firewood_cocobolo>    );
createChoppedWoodBlock("chopped.zebrawood"       , <item:contenttweaker:forestry_firewood_zebrawood>   );

createChoppedWoodBlock("chopped_cuisine_citrus"  , <item:contenttweaker:cuisine_firewood_citrus>       );


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
    