import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;

// Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped("piston_fixed", <minecraft:piston>, [
    [<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:rocksHard>, <ore:ingotIron>, <ore:rocksHard>],
    [<ore:rocksHard>, <ore:dustRedstone>, <ore:rocksHard>]
]);

// Oak Trapdoor
recipes.remove(<minecraft:trapdoor>);
recipes.addShaped("oak_trapdoor_fixed", <minecraft:trapdoor>, [
    [<contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>],
    [<contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>]
]);

// Treated Wood Fix
val creosoteBucket = <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000});
val creosoteClayBucket = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}});
val creosoteReservoir = <thermalexpansion:reservoir:*>.withTag({Fluid: {FluidName: "creosote", Amount: 1000}});
recipes.addShaped("treated_wood_lumber", <contenttweaker:treated_wood_lumber> * 8, [
    [<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:lumber>, creosoteBucket | creosoteClayBucket | creosoteReservoir, <ore:lumber>],
    [<ore:lumber>, <ore:lumber>, <ore:lumber>]
]);

// Painted Wood Fix
val paintedWoods = {
    <contenttweaker:painted_wood_white_lumber> : <minecraft:dye:15>,
    <contenttweaker:painted_wood_orange_lumber> : <minecraft:dye:14>,
    <contenttweaker:painted_wood_magenta_lumber> : <minecraft:dye:13>,
    <contenttweaker:painted_wood_light_blue_lumber> : <minecraft:dye:12>,
    <contenttweaker:painted_wood_yellow_lumber> : <minecraft:dye:11>,
    <contenttweaker:painted_wood_lime_lumber> : <minecraft:dye:10>,
    <contenttweaker:painted_wood_pink_lumber> : <minecraft:dye:9>,
    <contenttweaker:painted_wood_gray_lumber> : <minecraft:dye:8>,
    <contenttweaker:painted_wood_silver_lumber> : <minecraft:dye:7>,
    <contenttweaker:painted_wood_cyan_lumber> : <minecraft:dye:6>,
    <contenttweaker:painted_wood_purple_lumber> : <minecraft:dye:5>,
    <contenttweaker:painted_wood_blue_lumber> : <minecraft:dye:4>,
    <contenttweaker:painted_wood_brown_lumber> : <minecraft:dye:3>,
    <contenttweaker:painted_wood_green_lumber> : <minecraft:dye:2>,
    <contenttweaker:painted_wood_red_lumber> : <minecraft:dye:1>,
    <contenttweaker:painted_wood_black_lumber> : <minecraft:dye>
} as IItemStack[IItemStack];

for paintedLumber, dye in paintedWoods {
    recipes.addShaped(paintedLumber * 8, [
        [<ore:lumber>, <ore:lumber>, <ore:lumber>],
        [<ore:lumber>, dye, <ore:lumber>],
        [<ore:lumber>, <ore:lumber>, <ore:lumber>]
    ]);
}