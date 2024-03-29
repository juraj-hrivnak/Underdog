
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.Burn;

Burn.removeAllRecipes();
Burn.createBuilder("charcoal_from_wood_pile", <minecraft:coal:1>, "pyrotech:log_pile:*")
    .setBurnStages(5)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:creosote> * 100)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .addFailureItem(<minecraft:coal:1>) // charcoal
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder("coal_coke_from_coal_block", <immersiveengineering:material:6>, "minecraft:coal_block")
    .setBurnStages(5)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:creosote> * 100)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:21> * 4) // coal pieces
    .addFailureItem(<pyrotech:material:21> * 6) // coal pieces
    .addFailureItem(<pyrotech:material:21> * 8) // coal pieces
    .addFailureItem(<immersiveengineering:material:6>) // coal coke
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();

// Removing charcoal from furnace
furnace.remove(<minecraft:coal:1>);
