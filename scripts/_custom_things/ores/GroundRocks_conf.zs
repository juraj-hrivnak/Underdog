import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;


val miniStoneRocksOredict = <ore:miniStoneRocks>;
val miniStoneRocks = [
    <contenttweaker:rock>,
    <contenttweaker:rock1>,
    <contenttweaker:rock2>,
    <contenttweaker:rock3>
] as IItemStack[];

for item in miniStoneRocks {
    miniStoneRocksOredict.add(item);
}
