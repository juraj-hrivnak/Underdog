
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.pyrotech.Barrel;

Barrel.removeAllRecipes();

function barrelWaterRecipe(name as string, output as ILiquidStack, waterAmount as int, input as IIngredient[], time as int) {
    Barrel.addRecipe(name + "_water"        , output, <liquid:water>          * waterAmount, input, time);
    Barrel.addRecipe(name + "_purifiedwater", output, <liquid:purifiedwater>  * waterAmount, input, time);
    Barrel.addRecipe(name + "_saltwater"    , output, <liquid:saltwater>      * waterAmount, input, time);
}

// Tannin Leaves
barrelWaterRecipe("tannin_leaves", <liquid:tannin> * 1000, 1000, [<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>], 4800);

// Tannin Roots
barrelWaterRecipe("tannin_roots", <liquid:tannin> * 1000, 1000, [<ore:plantRoot>, <ore:plantRoot>, <ore:plantRoot>, <ore:plantRoot>], 4800);

// Tannin Nuts
barrelWaterRecipe("tannin_nuts", <liquid:tannin> * 1000, 1000, [<ore:listAllnut>, <ore:listAllnut>, <ore:listAllnut>, <ore:listAllnut>], 4800);

// Tannin Bark
barrelWaterRecipe("tannin_bark", <liquid:tannin> * 1000, 1000, [<ore:logWood>], 4800);
