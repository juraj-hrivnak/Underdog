
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.BlastFurnace as BlastFurnace;

val blastFurnace as IItemStack[][IOreDictEntry] = {

//  IIngredient input,            IItemStack output,                 IItemStack secondaryOutput
    <ore:oreIron>               : [<immersiveengineering:metal:8>    , <pyrotech:generated_slag_iron>      ],
    <ore:richOreIron>           : [<immersiveengineering:metal:8> * 2, <pyrotech:generated_slag_iron>  * 2 ]
};

for input, output in blastFurnace {
    BlastFurnace.addRecipe(output[0], input, 1200, output[1]);
}
