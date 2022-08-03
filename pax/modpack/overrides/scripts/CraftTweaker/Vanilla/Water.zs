
#priority 10
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Doesn't work (all buckets return iron bucket)
static allWaterLiquids as IIngredient = <liquid:water> * 1000 | <liquid:purifiedwater> * 1000 | <liquid:saltwater> * 1000;

static allWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "purifiedwater", Amount: 1000})
    | <forge:bucketfilled>      .withTag({FluidName: "saltwater", Amount: 1000})
    | <harvestcraft:freshwateritem>;

static allSpringWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <harvestcraft:freshwateritem>;

static allFreshWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "purifiedwater", Amount: 1000})
    | <harvestcraft:freshwateritem>;

static allSaltWater as IIngredient =
      <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_clay>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "saltwater", Amount: 1000});

// Replace all occurrences of "listAllwater" with Spring Water as an ingredient
recipes.replaceAllOccurences(<ore:listAllwater>, allSpringWater, <*>);
