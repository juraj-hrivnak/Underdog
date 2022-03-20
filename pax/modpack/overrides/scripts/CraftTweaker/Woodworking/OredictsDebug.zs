
#norun
#priority 12
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

if (<ore:plankWood> has <minecraft:planks>) {
    print("
        ///////
        SUCCESS
        ///////
    ");
} else {
    print("
        ////
        FAIL
        ////
    ");
}
