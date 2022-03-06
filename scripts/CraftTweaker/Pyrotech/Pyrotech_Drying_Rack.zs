
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;

CrudeDryingRack.removeAllRecipes();
DryingRack.removeAllRecipes();

rh(<pyrotech:drying_rack>);

val items as IItemStack[IItemStack] = {
    // <pyrotech:material:2>   : <minecraft:wheat>,
    <pyrotech:material:13>  : <pyrotech:material:12>,
    <minecraft:sponge>      : <minecraft:sponge:1>,
    <minecraft:paper>       : <pyrotech:material:25>
};

for output, input in items {

    DryingRack.addRecipe(
        input.name + output.name,   // recipe name
        output,                     // output
        input,                      // input
        600                         // duration in ticks
    );

}
