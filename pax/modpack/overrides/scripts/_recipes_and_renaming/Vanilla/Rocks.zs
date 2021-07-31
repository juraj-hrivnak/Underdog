#priority -20
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val hardRocksOredict = <ore:rocksHard>;

val hardRocks = [
    <divergentunderground:rock_stone>,
    <divergentunderground:rock_endstone>,
    <divergentunderground:rock_andesite>,
    <divergentunderground:rock_diorite>,
    <divergentunderground:rock_granite>,
    <divergentunderground:rock_quark_limestone>,
    <divergentunderground:rock_quark_marble>
] as IItemStack[];

for item in hardRocks {
    hardRocksOredict.add(item);
}

recipes.replaceAllOccurences(<ore:cobblestone>, <ore:rocksHard>, <*>);