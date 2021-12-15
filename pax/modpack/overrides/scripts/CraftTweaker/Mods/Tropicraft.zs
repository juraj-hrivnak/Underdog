import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded tropicraft

val pinacolada = {
    pineappleCubesCoconutChunk : <tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}),
    pineappleCubesCoconut : <tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte}),
    pineappleCoconutChunk : <tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}),
    pineappleCoconut : <tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte})
} as IItemStack[string];

// Recipes for pinacoladas integrated with pam's harvestcraft
recipes.addShapeless(pinacolada.pineappleCubesCoconutChunk, [<tropicraft:pineapple_cubes>, <harvestcraft:coconutitem>, <tropicraft:bamboo_mug>]);
recipes.addShapeless(pinacolada.pineappleCoconutChunk, [<harvestcraft:pineappleitem>, <harvestcraft:coconutitem>, <tropicraft:bamboo_mug>]);

// Adding cropPineapple oredict to pineapple
<ore:cropPineapple>.add(<tropicraft:pineapple>);

// Bongo drums
recipes.remove(<tropicraft:bongo>);
recipes.addShaped(<tropicraft:bongo>, [
    [<ore:leather>],
    [<ore:lumber>],
    [<ore:lumber>]
]);
recipes.remove(<tropicraft:bongo:1>);
recipes.addShaped(<tropicraft:bongo:1>, [
    [<ore:leather>, <ore:leather>],
    [<ore:lumber>, <ore:lumber>],
    [<ore:lumber>, <ore:lumber>]
]);
recipes.remove(<tropicraft:bongo:2>);
recipes.addShaped(<tropicraft:bongo:2>, [
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:lumber>, <ore:lumber>, <ore:lumber>]
]);