
#modloaded animania cuisine
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

rh(<animania:carving_knife>);

val knifeCarving = {
    <animania:friesian_cheese_wedge> : <animania:friesian_cheese_wheel>,
    <animania:holstein_cheese_wedge> : <animania:holstein_cheese_wheel>,
    <animania:jersey_cheese_wedge> : <animania:jersey_cheese_wheel>,
    <animania:goat_cheese_wedge> : <animania:goat_cheese_wheel>,
    <animania:sheep_cheese_wedge> : <animania:sheep_cheese_wheel>,
    <animania:raw_prime_bacon> : <animania:raw_prime_pork>,
    <animania:raw_prime_steak> : <animania:raw_prime_beef>,
    <animania:block_straw> : <minecraft:wheat>
} as IItemStack[IItemStack];

for smallChunk, bigChunk in knifeCarving {
    RecipeUtils.tweakRecipe(false, smallChunk * 4, [[ <cuisine:kitchen_knife>, bigChunk ]]);
}
