#modloaded animania cuisine
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

rh(<animania:carving_knife>);

val knifeCarving = {
    <animania:friesian_cheese_wedge> : <animania:friesian_cheese_wheel>,
    <animania:holstein_cheese_wedge> : <animania:holstein_cheese_wheel>,
    <animania:jersey_cheese_wedge> : <animania:jersey_cheese_wheel>,
    <animania:goat_cheese_wedge> : <animania:goat_cheese_wheel>,
    <animania:sheep_cheese_wedge> : <animania:sheep_cheese_wheel>,
    <animania:raw_prime_bacon> : <animania:raw_prime_pork>,
    <animania:raw_prime_beef> : <animania:raw_prime_steak>,
    <animania:block_straw> : <charcoal_pit:straw>,
    <animania:block_straw> : <minecraft:wheat>
} as IItemStack[IItemStack];

for piece, full in knifeCarving {
    recipes.remove(piece);
    recipes.addShapeless(piece * 4, [ <cuisine:kitchen_knife>, full ]);
}