
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mod.mekanism.gas.IGasStack;
import mods.mekanism.purification as MKPurification;

val purification as IItemStack[IIngredient] = {

//  IIngredient input,            IItemStack output                
    <ore:oreIron>               : <mekanism:clump>   * 3,
    <ore:oreGold>               : <mekanism:clump:1> * 3,
    <ore:oreOsmium>             : <mekanism:clump:2> * 3,
    <ore:oreCopper>             : <mekanism:clump:3> * 3,
    <ore:oreTin>                : <mekanism:clump:4> * 3,
    <ore:oreSilver>             : <mekanism:clump:5> * 3,
    <ore:oreLead>               : <mekanism:clump:6> * 3,

    <ore:shardIron>             : <mekanism:clump>   * 1,
    <ore:shardGold>             : <mekanism:clump:1> * 1,
    <ore:shardOsmium>           : <mekanism:clump:2> * 1,
    <ore:shardCopper>           : <mekanism:clump:3> * 1,
    <ore:shardTin>              : <mekanism:clump:4> * 1,
    <ore:shardSilver>           : <mekanism:clump:5> * 1,
    <ore:shardLead>             : <mekanism:clump:6> * 1

};

for input, output in purification {

    MKPurification.addRecipe(input, <gas:oxygen>, output);

}
