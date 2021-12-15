
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.mekanism.combiner as MKCombiner;

val combining as IItemStack[IIngredient] = {

//  IIngredient input,             ItemStack output
    <ore:dustIron>           * 8 : <geolosys:cluster>   ,
    <ore:dustGold>           * 8 : <geolosys:cluster:1> ,
    <ore:dustCopper>         * 8 : <geolosys:cluster:2> ,
    <ore:dustTin>            * 8 : <geolosys:cluster:3> ,
    <ore:dustSilver>         * 8 : <geolosys:cluster:4> ,
    <ore:dustLead>           * 8 : <geolosys:cluster:5> ,
    <ore:dustAluminum>       * 8 : <geolosys:cluster:6> ,
    <ore:dustNickel>         * 8 : <geolosys:cluster:7> ,
    <ore:dustUranium>        * 8 : <geolosys:cluster:9> ,
    <ore:dustOsmium>         * 8 : <geolosys:cluster:12>

};

for input, output in combining {

    MKCombiner.addRecipe(input, <ore:cobblestone>, output);

}
