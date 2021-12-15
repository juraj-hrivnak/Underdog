
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mod.mekanism.gas.IGasStack;
import mods.mekanism.chemical.dissolution as MKDissolution;

val dissolutions as IGasStack[IIngredient] = {

//  IIngredient input,            IGasStack output
    <ore:oreIron>               : <gas:iron>      ,
    <ore:oreGold>               : <gas:gold>      ,
    <ore:oreCopper>             : <gas:copper>    ,
    <ore:oreTin>                : <gas:tin>       ,
    <ore:oreSilver>             : <gas:silver>    ,
    <ore:oreLead>               : <gas:lead>      ,
    <ore:oreOsmium>             : <gas:osmium>
//  <ore:oreAluminum>           : <gas:aluminum>  ,
//  <ore:oreNickel>             : <gas:nickel>    ,
//  <ore:orePlatinum>           : <gas:platinum>  ,
//  <ore:oreUranium>            : <gas:uranium>   ,
//  <ore:oreZinc>               : <gas:zinc>      ,
//  <ore:oreYellorium>          : <gas:yellorium> ,

};

for input, output in dissolutions {

    MKDissolution.addRecipe(input, output * 1000);

}