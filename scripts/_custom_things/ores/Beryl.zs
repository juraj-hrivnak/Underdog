#priority 13
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var berylCluster = VanillaFactory.createItem("beryl_cluster");
BerylCluster.register();

<ore:oreEmerald>.add(<contenttweaker:beryl_cluster>);

var kimberliteCluster = VanillaFactory.createItem("kimberlite_cluster");
kimberliteCluster.register();