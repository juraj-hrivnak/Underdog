
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.Blueprint as Blueprint;
import mods.immersiveengineering.MetalPress as MetalPress;

static molds as IItemStack[string] = {
    plate       : <immersiveengineering:mold>,
    gear        : <immersiveengineering:mold:1>,
    rod         : <immersiveengineering:mold:2>,
    bullet      : <immersiveengineering:mold:3>,
    wire        : <immersiveengineering:mold:4>,
    packing2x2  : <immersiveengineering:mold:5>,
    packing3x3  : <immersiveengineering:mold:6>,
    unpacking   : <immersiveengineering:mold:7>,
    nail        : <contenttweaker:mold_nail>
};

// Add recipe for nail mold
Blueprint.addRecipe("molds", molds.nail, [
    <ore:plateSteel>, <ore:plateSteel>,
    <ore:plateSteel>, <ore:plateSteel>,
    <ore:plateSteel>, <immersiveengineering:tool:1>
]);

val press as IItemStack[][IIngredient] = {

//  IIngredient input,            IItemStack output,                 IItemStack mold
    <ore:ingotIron>             : [<contenttweaker:nail_iron>   * 8, molds.nail     ]

};

for input, output in press {
    MetalPress.addRecipe(output[0], input, output[1], 2000);
}
