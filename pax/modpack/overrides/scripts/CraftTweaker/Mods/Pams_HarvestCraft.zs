
#priority 12
#modloaded harvestcraft
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

// // Juicer
// RecipeUtils.tweakRecipe(true, <harvestcraft:juiceritem>,
//    [[<ore:stones>                     ],
//     [<minecraft:stone_pressure_plate> ]]);

// Fresh Water (dupe fix)
val springWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "water", Amount: 1000}});

RecipeUtils.tweakRecipe(false, <harvestcraft:freshwateritem>, [[springWater]]);
