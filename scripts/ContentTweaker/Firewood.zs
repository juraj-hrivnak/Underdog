#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Item;

val firewoods as string[string] = {

    firewood_oak        : "firewood_oak"        ,
    firewood_spruce     : "firewood_spruce"     ,
    firewood_birch      : "firewood_birch"      ,
    firewood_jungle     : "firewood_jungle"     ,
    firewood_acacia     : "firewood_acacia"     ,
    firewood_dark_oak   : "firewood_dark_oak"   ,

    firewood_sacred_oak : "firewood_sacred_oak" ,
    firewood_cherry     : "firewood_cherry"     ,
    firewood_umbran     : "firewood_umbran"     ,
    firewood_fir        : "firewood_fir"        ,
    firewood_ethereal   : "firewood_ethereal"   ,
    firewood_magic      : "firewood_magic"      ,
    firewood_mangrove   : "firewood_mangrove"   ,
    firewood_palm       : "firewood_palm"       ,
    firewood_redwood    : "firewood_redwood"    ,
    firewood_willow     : "firewood_willow"     ,
    firewood_pine       : "firewood_pine"       ,
    firewood_hellbark   : "firewood_hellbark"   ,
    firewood_jacaranda  : "firewood_jacaranda"  ,
    firewood_mahogany   : "firewood_mahogany"   ,
    firewood_ebony      : "firewood_ebony"      ,
    firewood_eucalyptus : "firewood_eucalyptus" ,

};

for x, y in firewoods {
    var x = VanillaFactory.createItem(y);
    x.register();
}