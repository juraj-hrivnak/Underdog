#modloaded thermalexpansion forestry
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import mods.thermalexpansion.CompressionDynamo;

// Forestrys seed oil to Compression Dynamo
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:seed.oil>, 80);

// Seed oil unification recipes
val seedOil = {
    forestryClayBucket : <ceramics:clay_bucket>.withTag({fluids: {FluidName: "seed.oil", Amount: 1000}}),
    thermalexpansionClayBucket : <ceramics:clay_bucket>.withTag({fluids: {FluidName: "seed_oil", Amount: 1000}}),
    forestryIronBucket : <forge:bucketfilled>.withTag({FluidName: "seed.oil", Amount: 1000}),
    thermalexpansionIronBucket : <forge:bucketfilled>.withTag({FluidName: "seed_oil", Amount: 1000})
} as IItemStack[string];

    // Clay bucket
    recipes.addShapeless(seedOil.forestryClayBucket, [seedOil.thermalexpansionClayBucket]);
    recipes.addShapeless(seedOil.thermalexpansionClayBucket, [seedOil.forestryClayBucket]);
    // Iron bucket
    recipes.addShapeless(seedOil.forestryIronBucket, [seedOil.thermalexpansionIronBucket]);
    recipes.addShapeless(seedOil.thermalexpansionIronBucket, [seedOil.forestryIronBucket]);