
import scripts.CraftTweaker.Utils.RecipeUtils;

// Remove Rabbit Hide => Leather recipe
// Add 2x Small Leather => Leather recipe
RecipeUtils.tweakRecipe(false, <minecraft:leather>, [[<pyrotech:material:45>, <pyrotech:material:45>]]);