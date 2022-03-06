#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Block;

val blocks as string[string] = {

    gravelAndesite    : "gravel_andesite"     ,
    gravelDiorite     : "gravel_diorite"      ,
    gravelGranite     : "gravel_granite"      ,
    gravelLimestone   : "gravel_limestone"    ,
    gravelMarble      : "gravel_marble"       

};

for x, y in blocks {
    var x = VanillaFactory.createBlock(y, <blockmaterial:rock>);
    x.gravity = true;
    x.fullBlock = true;
    x.translucent = false;
    x.lightValue = 0;
    x.blockHardness = 2.5;
    x.blockResistance = 15.0;
    x.toolClass = "shovel";
    x.toolLevel = 0;
    x.blockSoundType = <soundtype:ground>;
    x.setCreativeTab(<creativetab:misc>);
    x.register();
}
