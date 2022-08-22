
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.GraniteAnvil;

import scripts.CraftTweaker.Utils.RecipeUtils.getNameForRecipe;

IroncladAnvil.removeAllRecipes();
GraniteAnvil.removeAllRecipes();

val items as IIngredient[IItemStack] = {

    <pyrotech:material:31>          * 3 : <pyrotech:material:10>    ,
    <minecraft:redstone>            * 2 : <pyrotech:material:36>    ,
    <minecraft:quartz>              * 2 : <pyrotech:material:37>    ,
    <pyrotech:material:10>          * 3 : <minecraft:flint>         ,
    <pyrotech:material:11>          * 3 : <minecraft:bone>          ,
    <pyrotech:material:18>          * 9 : <minecraft:diamond>       ,
    <pyrotech:material:19>          * 9 : <minecraft:iron_ingot>    ,
    <pyrotech:material:34>          * 9 : <minecraft:gold_ingot>    ,
    <immersiveengineering:metal:8>      : <ore:ingotPigiron>

};

for output, input in items {

    IroncladAnvil.addRecipe(
        "ironclad_anvil_" ~ getNameForRecipe([output]), // recipe name
        output,            // output
        input,             // input
        4,                 // hits
        "hammer"           // hammer | pickaxe
    );

    GraniteAnvil.addRecipe(
        "granite_anvil_" ~ getNameForRecipe([output]),        // recipe name
        output,            // output
        input,             // input
        4,                 // hits
        "hammer"           // hammer | pickaxe
    );

}
