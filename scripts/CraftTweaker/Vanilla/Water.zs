
#priority 10
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static allWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "purifiedwater", Amount: 1000})
    | <forge:bucketfilled>      .withTag({FluidName: "saltwater", Amount: 1000})
    | <harvestcraft:freshwateritem>;

static allFreshWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "purifiedwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "purifiedwater", Amount: 1000})
    | <harvestcraft:freshwateritem>;

static allSpringWater as IIngredient = <minecraft:water_bucket>
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "water", Amount: 1000}})
    | <harvestcraft:freshwateritem>;

static allSaltWater as IIngredient =
      <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_wood>    .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <pyrotech:bucket_stone>   .withTag({fluids: {FluidName: "saltwater", Amount: 1000}})
    | <forge:bucketfilled>      .withTag({FluidName: "saltwater", Amount: 1000});

recipes.replaceAllOccurences(<ore:listAllwater>, allSpringWater, <*>);