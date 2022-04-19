
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mod.mekanism.gas.IGasStack;
import mods.mekanism.chemical.injection as MKInjection;

val dissolutions as IItemStack[IIngredient] = {

//  IIngredient input,            IItemStack output
    <ore:oreIron>               : <mekanism:shard>   * 4,
    <ore:oreGold>               : <mekanism:shard:1> * 4,
    <ore:oreOsmium>             : <mekanism:shard:2> * 4,
    <ore:oreCopper>             : <mekanism:shard:3> * 4,
    <ore:oreTin>                : <mekanism:shard:4> * 4,
    <ore:oreSilver>             : <mekanism:shard:5> * 4,
    <ore:oreLead>               : <mekanism:shard:6> * 4,
    <mekanism:crystal>          : <mekanism:shard>      ,
    <mekanism:crystal:1>        : <mekanism:shard:1>    ,
    <mekanism:crystal:2>        : <mekanism:shard:2>    ,
    <mekanism:crystal:3>        : <mekanism:shard:3>    ,
    <mekanism:crystal:4>        : <mekanism:shard:4>    ,
    <mekanism:crystal:5>        : <mekanism:shard:5>    ,
    <mekanism:crystal:6>        : <mekanism:shard:6>

};

for input, output in dissolutions {

    MKInjection.addRecipe(input, <gas:hydrogenchloride>, output);

}

MKInjection.addRecipe(<minecraft:brick>, <gas:water>, <minecraft:clay_ball>);
MKInjection.addRecipe(<minecraft:dirt>, <gas:water>, <minecraft:clay>);
