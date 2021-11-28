
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.tconstruct.Casting as Casting;

// IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time

Casting.addTableRecipe(<contenttweaker:nail_iron>, <contenttweaker:cast_nail>, <liquid:iron>, 18, false, 20);
Casting.addTableRecipe(<contenttweaker:cast_nail>, <contenttweaker:nail_iron>, <liquid:gold>, 288, true, 60);