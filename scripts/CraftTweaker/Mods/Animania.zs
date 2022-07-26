
#modloaded animania cuisine
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

rh(<animania:carving_knife>);

val knifeCarving = {
    <animania:friesian_cheese_wedge>    : <animania:friesian_cheese_wheel>  ,
    <animania:holstein_cheese_wedge>    : <animania:holstein_cheese_wheel>  ,
    <animania:jersey_cheese_wedge>      : <animania:jersey_cheese_wheel>    ,
    <animania:goat_cheese_wedge>        : <animania:goat_cheese_wheel>      ,
    <animania:sheep_cheese_wedge>       : <animania:sheep_cheese_wheel>     ,
    <animania:raw_prime_bacon>          : <animania:raw_prime_pork>         ,
    <animania:raw_prime_steak>          : <animania:raw_prime_beef>         ,
    <animania:block_straw>              : <minecraft:wheat>
} as IItemStack[IItemStack];

for smallChunk, bigChunk in knifeCarving {
    RecipeUtils.tweakRecipe(false, smallChunk * 4, [[ <cuisine:kitchen_knife>, bigChunk ]]);
}

val bucketIron as IIngredient =
      <forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000})
    | <forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000})
    | <forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000})
    | <forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000})
    | <forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000})
    | <forge:bucketfilled>.withTag({FluidName: "milk_sheep", Amount: 1000});

val bucketStone as IIngredient =
      <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})
    | <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})
    | <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})
    | <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}});

val bucketWood as IIngredient =
      <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})
    | <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})
    | <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})
    | <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}});

val bucketClay as IIngredient =
      <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})
    | <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})
    | <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})
    | <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})
    | <pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}});

RecipeUtils.tweakRecipe(false, <minecraft:milk_bucket>, [[ bucketIron.noReturn() ]]);
recipes.addShapeless(<pyrotech:bucket_stone:1>, [ bucketStone.noReturn() ]);
recipes.addShapeless(<pyrotech:bucket_wood:1>, [ bucketWood.noReturn() ]);
recipes.addShapeless(<pyrotech:bucket_clay:1>, [ bucketClay.noReturn() ]);

// Meats oredict support
<ore:listAllrabbitraw>.add(<animania:raw_prime_rabbit>);
<ore:listAllchickenraw>.add(<animania:raw_peacock>);
<ore:listAllchickenraw>.add(<animania:raw_prime_peacock>);
<ore:listAllmuttonraw>.add(<animania:raw_prime_mutton>);
<ore:listAllmuttonraw>.add(<animania:raw_prime_chevon>);
