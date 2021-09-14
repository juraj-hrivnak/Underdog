#priority 14
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val lumbersAndLogs = {
    <contenttweaker:lumber_vanilla_oak> : <minecraft:log>,
    <contenttweaker:lumber_vanilla_spruce> : <minecraft:log:1>,
    <contenttweaker:lumber_vanilla_birch> : <minecraft:log:2>,
    <contenttweaker:lumber_vanilla_jungle> : <minecraft:log:3>,
    <contenttweaker:lumber_vanilla_acacia> : <minecraft:log2>,
    <contenttweaker:lumber_vanilla_dark_oak> : <minecraft:log2:1>,
    <contenttweaker:lumber_sacred_oak> : <biomesoplenty:log_0:4>,
    <contenttweaker:lumber_cherry> : <biomesoplenty:log_0:5>,
    <contenttweaker:lumber_umbran> : <biomesoplenty:log_0:6>,
    <contenttweaker:lumber_fir> : <biomesoplenty:log_0:7>,
    <contenttweaker:lumber_ethereal> : <biomesoplenty:log_1:4>,
    <contenttweaker:lumber_magic> : <biomesoplenty:log_1:5>,
    <contenttweaker:lumber_mangrove> : <biomesoplenty:log_1:6>,
    <contenttweaker:lumber_palm> : <biomesoplenty:log_1:7>,
    <contenttweaker:lumber_redwood> : <biomesoplenty:log_2:4>,
    <contenttweaker:lumber_willow> : <biomesoplenty:log_2:5>,
    <contenttweaker:lumber_pine> : <biomesoplenty:log_2:6>,
    <contenttweaker:lumber_hellbark> : <biomesoplenty:log_2:7>,
    <contenttweaker:lumber_jacaranda> : <biomesoplenty:log_3:4>,
    <contenttweaker:lumber_mahogany> : <biomesoplenty:log_3:5>,
    <contenttweaker:lumber_ebony> : <biomesoplenty:log_3:6>,
    <contenttweaker:lumber_eucalyptus> : <biomesoplenty:log_3:7>,
    <contenttweaker:lumber_planks_olive> : <rustic:log>,
    <contenttweaker:lumber_planks_ironwood> : <rustic:log:1>,
    <contenttweaker:lumber_planks.larch> : <forestry:logs.0>,
    <contenttweaker:lumber_planks.teak> : <forestry:logs.0:1>,
    <contenttweaker:lumber_planks.acacia> : <forestry:logs.0:2>,
    <contenttweaker:lumber_planks.lime> : <forestry:logs.0:3>,
    <contenttweaker:lumber_planks.chestnut> : <forestry:logs.1>,
    <contenttweaker:lumber_planks.wenge> : <forestry:logs.1:1>,
    <contenttweaker:lumber_planks.baobab> : <forestry:logs.1:2>,
    <contenttweaker:lumber_planks.sequoia> : <forestry:logs.1:3>,
    <contenttweaker:lumber_planks.kapok> : <forestry:logs.2>,
    <contenttweaker:lumber_planks.ebony> : <forestry:logs.2:1>,
    <contenttweaker:lumber_planks.mahogany> : <forestry:logs.2:2>,
    <contenttweaker:lumber_planks.balsa> : <forestry:logs.2:3>,
    <contenttweaker:lumber_planks.willow> : <forestry:logs.3>,
    <contenttweaker:lumber_planks.walnut> : <forestry:logs.3:1>,
    <contenttweaker:lumber_planks.greenheart> : <forestry:logs.3:2>,
    <contenttweaker:lumber_planks.cherry> : <forestry:logs.3:3>,
    <contenttweaker:lumber_planks.mahoe> : <forestry:logs.4>,
    <contenttweaker:lumber_planks.poplar> : <forestry:logs.4:1>,
    <contenttweaker:lumber_planks.palm> : <forestry:logs.4:2>,
    <contenttweaker:lumber_planks.papaya> : <forestry:logs.4:3>,
    <contenttweaker:lumber_planks.pine> : <forestry:logs.5>,
    <contenttweaker:lumber_planks.plum> : <forestry:logs.5:1>,
    <contenttweaker:lumber_planks.maple> : <forestry:logs.5:2>,
    <contenttweaker:lumber_planks.citrus> : <forestry:logs.5:3>,
    <contenttweaker:lumber_planks.giganteum> : <forestry:logs.6>,
    <contenttweaker:lumber_planks.ipe> : <forestry:logs.6:1>,
    <contenttweaker:lumber_planks.padauk> : <forestry:logs.6:2>,
    <contenttweaker:lumber_planks.cocobolo> : <forestry:logs.6:3>,
    <contenttweaker:lumber_planks.zebrawood> : <forestry:logs.7>,
    <contenttweaker:cuisine_citrus_lumber> : <cuisine:log>
} as IItemStack[IItemStack];

val lumbersAndPlanks = {
    // Vanilla
    <contenttweaker:lumber_vanilla_oak> : <minecraft:planks>,
    <contenttweaker:lumber_vanilla_spruce> : <minecraft:planks:1>,
    <contenttweaker:lumber_vanilla_birch> : <minecraft:planks:2>,
    <contenttweaker:lumber_vanilla_jungle> : <minecraft:planks:3>,
    <contenttweaker:lumber_vanilla_acacia> : <minecraft:planks:4>,
    <contenttweaker:lumber_vanilla_dark_oak> : <minecraft:planks:5>,
    // BOP
    <contenttweaker:lumber_sacred_oak> : <biomesoplenty:planks_0>,
    <contenttweaker:lumber_cherry> : <biomesoplenty:planks_0:1>,
    <contenttweaker:lumber_umbran> : <biomesoplenty:planks_0:2>,
    <contenttweaker:lumber_fir> : <biomesoplenty:planks_0:3>,
    <contenttweaker:lumber_ethereal> : <biomesoplenty:planks_0:4>,
    <contenttweaker:lumber_magic> : <biomesoplenty:planks_0:5>,
    <contenttweaker:lumber_mangrove> : <biomesoplenty:planks_0:6>,
    <contenttweaker:lumber_palm> : <biomesoplenty:planks_0:7>,
    <contenttweaker:lumber_redwood> : <biomesoplenty:planks_0:8>,
    <contenttweaker:lumber_willow> : <biomesoplenty:planks_0:9>,
    <contenttweaker:lumber_pine> : <biomesoplenty:planks_0:10>,
    <contenttweaker:lumber_hellbark> : <biomesoplenty:planks_0:11>,
    <contenttweaker:lumber_jacaranda> : <biomesoplenty:planks_0:12>,
    <contenttweaker:lumber_mahogany> : <biomesoplenty:planks_0:13>,
    <contenttweaker:lumber_ebony> : <biomesoplenty:planks_0:14>,
    <contenttweaker:lumber_eucalyptus> : <biomesoplenty:planks_0:15>,
    // Rustic
    <contenttweaker:lumber_planks_olive> : <rustic:planks>,
    <contenttweaker:lumber_planks_ironwood> : <rustic:planks:1>,
    // Forestry
    <contenttweaker:lumber_planks.larch> : <forestry:planks.0>,
    <contenttweaker:lumber_planks.teak> : <forestry:planks.0:1>,
    <contenttweaker:lumber_planks.acacia> : <forestry:planks.0:2>,
    <contenttweaker:lumber_planks.lime> : <forestry:planks.0:3>,
    <contenttweaker:lumber_planks.chestnut> : <forestry:planks.0:4>,
    <contenttweaker:lumber_planks.wenge> : <forestry:planks.0:5>,
    <contenttweaker:lumber_planks.baobab> : <forestry:planks.0:6>,
    <contenttweaker:lumber_planks.sequoia> : <forestry:planks.0:7>,
    <contenttweaker:lumber_planks.kapok> : <forestry:planks.0:8>,
    <contenttweaker:lumber_planks.ebony> : <forestry:planks.0:9>,
    <contenttweaker:lumber_planks.mahogany> : <forestry:planks.0:10>,
    <contenttweaker:lumber_planks.balsa> : <forestry:planks.0:11>,
    <contenttweaker:lumber_planks.willow> : <forestry:planks.0:12>,
    <contenttweaker:lumber_planks.walnut> : <forestry:planks.0:13>,
    <contenttweaker:lumber_planks.greenheart> : <forestry:planks.0:14>,
    <contenttweaker:lumber_planks.cherry> : <forestry:planks.0:15>,
    <contenttweaker:lumber_planks.mahoe> : <forestry:planks.1>,
    <contenttweaker:lumber_planks.poplar> : <forestry:planks.1:1>,
    <contenttweaker:lumber_planks.palm> : <forestry:planks.1:2>,
    <contenttweaker:lumber_planks.papaya> : <forestry:planks.1:3>,
    <contenttweaker:lumber_planks.pine> : <forestry:planks.1:4>,
    <contenttweaker:lumber_planks.plum> : <forestry:planks.1:5>,
    <contenttweaker:lumber_planks.maple> : <forestry:planks.1:6>,
    <contenttweaker:lumber_planks.citrus> : <forestry:planks.1:7>,
    <contenttweaker:lumber_planks.giganteum> : <forestry:planks.1:8>,
    <contenttweaker:lumber_planks.ipe> : <forestry:planks.1:9>,
    <contenttweaker:lumber_planks.padauk> : <forestry:planks.1:10>,
    <contenttweaker:lumber_planks.cocobolo> : <forestry:planks.1:11>,
    <contenttweaker:lumber_planks.zebrawood> : <forestry:planks.1:12>,
    // Cuisine
    <contenttweaker:cuisine_citrus_lumber> : <cuisine:planks>,
    // Rustic Painted Wood
    <contenttweaker:painted_wood_white_lumber> : <rustic:painted_wood_white>,
    <contenttweaker:painted_wood_orange_lumber> : <rustic:painted_wood_orange>,
    <contenttweaker:painted_wood_magenta_lumber> : <rustic:painted_wood_magenta>,
    <contenttweaker:painted_wood_light_blue_lumber> : <rustic:painted_wood_light_blue>,
    <contenttweaker:painted_wood_yellow_lumber> : <rustic:painted_wood_yellow>,
    <contenttweaker:painted_wood_lime_lumber> : <rustic:painted_wood_lime>,
    <contenttweaker:painted_wood_pink_lumber> : <rustic:painted_wood_pink>,
    <contenttweaker:painted_wood_gray_lumber> : <rustic:painted_wood_gray>,
    <contenttweaker:painted_wood_silver_lumber> : <rustic:painted_wood_silver>,
    <contenttweaker:painted_wood_cyan_lumber> : <rustic:painted_wood_cyan>,
    <contenttweaker:painted_wood_purple_lumber> : <rustic:painted_wood_purple>,
    <contenttweaker:painted_wood_blue_lumber> : <rustic:painted_wood_blue>,
    <contenttweaker:painted_wood_brown_lumber> : <rustic:painted_wood_brown>,
    <contenttweaker:painted_wood_green_lumber> : <rustic:painted_wood_green>,
    <contenttweaker:painted_wood_red_lumber> : <rustic:painted_wood_red>,
    <contenttweaker:painted_wood_black_lumber> : <rustic:painted_wood_black>,
    // Immersive Engineering
    <contenttweaker:treated_wood_lumber> : <immersiveengineering:treated_wood>

} as IItemStack[IItemStack];

for lumber, log in lumbersAndLogs {

    // Adding recipe for four lumbers from one log
	recipes.addShapeless(lumber * 8, [log]);

    // Adding "plankWood" oredict to lumber
    <ore:lumber>.add(lumber);

}

for lumber, plank in lumbersAndPlanks {

    // Removing default recipes for planks
    recipes.remove(plank);

    // Replacing all the planks with the right lumbers
	recipes.replaceAllOccurences(plank, lumber, <*>);

    // Adding recipe for lumber from planks
    recipes.addShapeless(lumber * 4, [plank]);

    // Adding recipe for planks block from four lumbers
    recipes.addShaped(plank,
    [[lumber, lumber],
     [lumber, lumber]]);

}