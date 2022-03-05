
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.Blueprint as Blueprint;
import mods.immersiveengineering.MetalPress as MetalPress;

Blueprint.addRecipe("molds", <contenttweaker:mold_nail>, [
    <ore:plateSteel>, <ore:plateSteel>,
    <ore:plateSteel>, <ore:plateSteel>,
    <ore:plateSteel>, <immersiveengineering:tool:1>
]);

val press as IItemStack[][IIngredient] = {

//  IIngredient input,            IItemStack output,                 IItemStack mold
    <ore:ingotIron>             : [<contenttweaker:nail_iron>   * 8, <contenttweaker:mold_nail>  * 1 ]

};

for input, output in press {

    MetalPress.addRecipe(output[0], input, output[1], 2000);

}
