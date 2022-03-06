
#priority 10
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

val toAdd as IItemStack[] = [
    <immersiveengineering:tool>,
    <pyrotech:stone_hammer:*>,
    <pyrotech:bone_hammer:*>,
    <pyrotech:flint_hammer:*>,
    <pyrotech:iron_hammer:*>,
    <pyrotech:gold_hammer:*>,
    <pyrotech:diamond_hammer:*>,
    <pyrotech:obsidian_hammer:*>,
    <tconstruct:hammer:*>
];

for add in toAdd {
    <ore:toolHammer>.add(add);
}
