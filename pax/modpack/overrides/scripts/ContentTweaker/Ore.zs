#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.AxisAlignedBB;

val clusters as string[string] = {

    // Vannila
    berylCluster                        : "beryl_cluster"           ,
    // kimberliteCluster                   : "kimberlite_cluster"      ,

    // lapisCluster                        : "lapis_cluster"           ,


    // NuclearCraft
    thoriumCluster                      : "thorium_cluster"         ,
    boronCluster                        : "boron_cluster"           ,
    lithiumCluster                      : "lithium_cluster"         ,
    magnesiumCluster                    : "magnesium_cluster"       ,

};

val blocks as string[string] = {

    // NuclearCraft
    monazite                            : "monazite"                ,
    sassolite                           : "sassolite"               ,
    borax                               : "borax"                   ,
    lepidolite                          : "lepidolite"              ,
    magnesite                           : "magnesite"               ,

};

val samples as string[string] = {

    // NuclearCraft
    monazite_sample                     : "monazite_sample"         ,
    sassolite_sample                    : "sassolite_sample"        ,
    borax_sample                        : "borax_sample"            ,
    lepidolite_sample                   : "lepidolite_sample"       ,
    magnesite_sample                    : "magnesite_sample"        ,

};

for x, y in clusters {
    var x = VanillaFactory.createItem(y);
    x.register();
}

for x, y in blocks {
    var x = VanillaFactory.createBlock(y, <blockmaterial:rock>);
    x.fullBlock = true;
    x.translucent = false;
    x.lightValue = 0.1;
    x.blockHardness = 2.5;
    x.blockResistance = 15.0;
    x.toolClass = "pickaxe";
    x.toolLevel = 1;
    x.blockSoundType = <soundtype:stone>;
    x.setCreativeTab(<creativetab:misc>);
    x.register();
}

for x, y in samples {
    var x = VanillaFactory.createBlock(y, <blockmaterial:rock>);
    x.setAxisAlignedBB(AxisAlignedBB.create(0.2F, 0.0F, 0.2F, 0.8F, 0.25F, 0.8F));
    x.toolClass = "pickaxe";
    x.toolLevel = 0;
    x.fullBlock = false;
    x.lightOpacity = 0;
    x.enumBlockRenderType = "MODEL";
    x.gravity = true;
    x.blockLayer = "CUTOUT_MIPPED";
    x.replaceable = false;
    x.blockHardness = 0.01;
    x.blockSoundType = <soundtype:stone>;
    x.setCreativeTab(<creativetab:misc>);
    x.register();
}