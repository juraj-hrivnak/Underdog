import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;

// Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped("piston_fixed", <minecraft:piston>, [
    [<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:rocksHard>, <ore:ingotIron>, <ore:rocksHard>],
    [<ore:rocksHard>, <ore:dustRedstone>, <ore:rocksHard>]
]);