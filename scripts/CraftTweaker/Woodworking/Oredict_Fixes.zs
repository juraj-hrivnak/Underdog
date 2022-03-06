#priority 20
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// Adding "plankWood" oredict to planks that don't have it
val toAdd as IItemStack[] = [
    <cuisine:planks>,
    <rustic:painted_wood_white>,
    <rustic:painted_wood_orange>,
    <rustic:painted_wood_magenta>,
    <rustic:painted_wood_light_blue>,
    <rustic:painted_wood_yellow>,
    <rustic:painted_wood_lime>,
    <rustic:painted_wood_pink>,
    <rustic:painted_wood_gray>,
    <rustic:painted_wood_silver>,
    <rustic:painted_wood_cyan>,
    <rustic:painted_wood_purple>,
    <rustic:painted_wood_blue>,
    <rustic:painted_wood_brown>,
    <rustic:painted_wood_green>,
    <rustic:painted_wood_red>,
    <rustic:painted_wood_black>,
    <immersiveengineering:treated_wood>,

    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_white_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_orange_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_magenta_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_light_blue_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_yellow_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_lime_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_pink_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_gray_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_silver_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_cyan_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_purple_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_blue_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_brown_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_green_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_red_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_black_0:*>,

    <unlimitedchiselworks:chisel_planks_oak_rustic_planks_0:*>,
    <unlimitedchiselworks:chisel_planks_oak_rustic_planks_1:*>
];

for add in toAdd {
    <ore:plankWood>.add(add);
}
