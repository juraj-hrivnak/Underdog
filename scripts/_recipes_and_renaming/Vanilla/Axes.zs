#priority 10
#modloaded tconstruct tropicraft immersiveengineering nuclearcraft appliedenergistics2
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;


val axes = <ore:axes>;
val allAxes = [
    <minecraft:iron_axe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_axe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <appliedenergistics2:certus_quartz_axe>,
    <appliedenergistics2:nether_quartz_axe>,
    <immersiveengineering:axe_steel>,
    <nuclearcraft:axe_boron>,
    <nuclearcraft:axe_tough>,
    <nuclearcraft:axe_hard_carbon>,
    <nuclearcraft:axe_boron_nitride>,
    <projectred-exploration:ruby_axe>,
    <projectred-exploration:sapphire_axe>,
    <projectred-exploration:peridot_axe>,
    <tconstruct:lumberaxe>,
    <tconstruct:hatchet>,
    <tconstruct:mattock>,
    <tropicraft:axe_eudialyte>,
    <tropicraft:axe_zircon>
] as IItemStack[];

for item in allAxes {
    axes.add(item);
}
