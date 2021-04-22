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