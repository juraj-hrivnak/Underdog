import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;


val rockOredict = <ore:rock>;
val cobblestoneOredict = <ore:cobblestone>;
val hardRocksOredict = <ore:rocksHard>;

val hardRocks = [
    <divergentunderground:rock_stone>,
    <divergentunderground:rock_andesite>,
    <divergentunderground:rock_diorite>,
    <divergentunderground:rock_granite>
] as IItemStack[];

val cobblestone = [
    <minecraft:cobblestone>,
    <divergentunderground:diorite_cobblestone>,
    <divergentunderground:granite_cobblestone>,
    <divergentunderground:andesite_cobblestone>
] as IItemStack[];

for item in hardRocks {
    hardRocksOredict.add(item);
}

recipes.replaceAllOccurences(<ore:cobblestone>, <ore:rocksHard>, <*>);