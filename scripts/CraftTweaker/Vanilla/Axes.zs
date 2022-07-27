
#priority 10
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

val toAdd as IItemStack[] = [
    <minecraft:iron_axe:*>,
    <minecraft:wooden_axe:*>,
    <minecraft:stone_axe:*>,
    <minecraft:diamond_axe:*>,
    <minecraft:golden_axe:*>,
    <appliedenergistics2:certus_quartz_axe:*>,
    <appliedenergistics2:nether_quartz_axe:*>,
    <immersiveengineering:axe_steel:*>,
    // <nuclearcraft:axe_boron:*>,
    // <nuclearcraft:axe_tough:*>,
    // <nuclearcraft:axe_hard_carbon:*>,
    // <nuclearcraft:axe_boron_nitride:*>,
    <tconstruct:lumberaxe:*>,
    <tconstruct:hatchet:*>,
    <tconstruct:mattock:*>,
    <tropicraft:axe_eudialyte:*>,
    <tropicraft:axe_zircon:*>
];

for add in toAdd {
    <ore:toolAxe>.add(add);
}
