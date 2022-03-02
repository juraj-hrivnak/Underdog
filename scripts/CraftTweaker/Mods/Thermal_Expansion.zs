
#modloaded thermalexpansion
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Pulverizer;

// Item removal
val itemsToRemove as IItemStack[] = [
    <thermalfoundation:material:894>,
    <thermalfoundation:ore_fluid:3>
]; for i in itemsToRemove { rh(i); }

// Forestry seed oil to Compression Dynamo
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:seed.oil>, 80);

// Seed oil unification recipes
val seedOil = {
    forestryClayBucket : <ceramics:clay_bucket>.withTag({fluids: {FluidName: "seed.oil", Amount: 1000}}),
    thermalexpansionClayBucket : <ceramics:clay_bucket>.withTag({fluids: {FluidName: "seed_oil", Amount: 1000}}),
    forestryIronBucket : <forge:bucketfilled>.withTag({FluidName: "seed.oil", Amount: 1000}),
    thermalexpansionIronBucket : <forge:bucketfilled>.withTag({FluidName: "seed_oil", Amount: 1000})
} as IItemStack[string];

// Clay bucket
recipes.addShapeless(seedOil.forestryClayBucket, [seedOil.thermalexpansionClayBucket.noReturn()]);
recipes.addShapeless(seedOil.thermalexpansionClayBucket, [seedOil.forestryClayBucket.noReturn()]);
// Iron bucket
recipes.addShapeless(seedOil.forestryIronBucket, [seedOil.thermalexpansionIronBucket.noReturn()]);
recipes.addShapeless(seedOil.thermalexpansionIronBucket, [seedOil.forestryIronBucket.noReturn()]);

// Ender pearl dust removal
Pulverizer.removeRecipe(<minecraft:ender_pearl>);
