
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Piston
RecipeUtils.tweakRecipe(true, <minecraft:piston>,
   [[<ore:lumber>, <ore:lumber>      , <ore:lumber> ],
    [<ore:rocks> , <ore:ingotIron>   , <ore:rocks>  ],
    [<ore:rocks> , <ore:dustRedstone>, <ore:rocks>  ]]);

// Oak Trapdoor
RecipeUtils.tweakRecipe(true, <minecraft:trapdoor>,
   [[<contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>],
    [<contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>, <contenttweaker:lumber_vanilla_oak>]]);

// Treated Wood  Fix
val creosoteBuckets as IIngredient =
      <forge:bucketfilled>    .withTag({FluidName: "creosote", Amount: 1000})
    | <pyrotech:bucket_refractory> .withTag({fluids: {FluidName: "creosote", Amount: 1000}})
    | <pyrotech:bucket_stone> .withTag({fluids: {FluidName: "creosote", Amount: 1000}})
    | <pyrotech:bucket_wood>  .withTag({fluids: {FluidName: "creosote", Amount: 1000}})
    | <pyrotech:bucket_clay>  .withTag({fluids: {FluidName: "creosote", Amount: 1000}});

recipes.addShaped("treated_wood_lumber", <contenttweaker:treated_wood_lumber> * 8, RecipeUtils.createSurround(creosoteBuckets, <ore:lumber>));

// Painted Wood Fix
val paintedWoods = {
    <contenttweaker:painted_wood_white_lumber>      : <minecraft:dye:15>,
    <contenttweaker:painted_wood_orange_lumber>     : <minecraft:dye:14>,
    <contenttweaker:painted_wood_magenta_lumber>    : <minecraft:dye:13>,
    <contenttweaker:painted_wood_light_blue_lumber> : <minecraft:dye:12>,
    <contenttweaker:painted_wood_yellow_lumber>     : <minecraft:dye:11>,
    <contenttweaker:painted_wood_lime_lumber>       : <minecraft:dye:10>,
    <contenttweaker:painted_wood_pink_lumber>       : <minecraft:dye:9>,
    <contenttweaker:painted_wood_gray_lumber>       : <minecraft:dye:8>,
    <contenttweaker:painted_wood_silver_lumber>     : <minecraft:dye:7>,
    <contenttweaker:painted_wood_cyan_lumber>       : <minecraft:dye:6>,
    <contenttweaker:painted_wood_purple_lumber>     : <minecraft:dye:5>,
    <contenttweaker:painted_wood_blue_lumber>       : <minecraft:dye:4>,
    <contenttweaker:painted_wood_brown_lumber>      : <minecraft:dye:3>,
    <contenttweaker:painted_wood_green_lumber>      : <minecraft:dye:2>,
    <contenttweaker:painted_wood_red_lumber>        : <minecraft:dye:1>,
    <contenttweaker:painted_wood_black_lumber>      : <minecraft:dye>
} as IItemStack[IItemStack];

for paintedLumber, dye in paintedWoods {
    recipes.addShaped(paintedLumber * 8, RecipeUtils.createSurround(dye, <ore:lumber>));
}

// Rustic Cabinet
recipes.remove(<rustic:cabinet>);
recipes.addShapedMirrored("cabinet_fixed", <rustic:cabinet>,
   [[<ore:plankWood>, <ore:trapdoorWood> ],
    [<ore:plateIron>, <ore:stickIron>    ]]);
