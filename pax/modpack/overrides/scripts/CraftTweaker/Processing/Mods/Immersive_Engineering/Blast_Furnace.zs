
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveengineering.BlastFurnace as BlastFurnace;

val grinding as IItemStack[][IOreDictEntry] = {

//  IIngredient input,            IItemStack output,                IItemStack secondaryOutput
    <ore:oreIron>               : [<tconstruct:ingots:4>          , <pyrotech:generated_slag_iron>      ],
    <ore:richOreIron>           : [<tconstruct:ingots:4>       * 2, <pyrotech:generated_slag_iron>  * 2 ]
};

for input, output in grinding {
    BlastFurnace.addRecipe(output[0], input, 1200, output[1]);
}
