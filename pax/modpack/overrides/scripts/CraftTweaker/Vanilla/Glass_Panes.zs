
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val panes as IItemStack[IItemStack] = {
    <minecraft:stained_glass_pane>     : <minecraft:dye:15>,
    <minecraft:stained_glass_pane:1>   : <minecraft:dye:14>,
    <minecraft:stained_glass_pane:2>   : <minecraft:dye:13>,
    <minecraft:stained_glass_pane:3>   : <minecraft:dye:12>,
    <minecraft:stained_glass_pane:4>   : <minecraft:dye:11>,
    <minecraft:stained_glass_pane:5>   : <minecraft:dye:10>,
    <minecraft:stained_glass_pane:6>   : <minecraft:dye:9>,
    <minecraft:stained_glass_pane:7>   : <minecraft:dye:8>,
    <minecraft:stained_glass_pane:8>   : <minecraft:dye:7>,
    <minecraft:stained_glass_pane:9>   : <minecraft:dye:6>,
    <minecraft:stained_glass_pane:10>  : <minecraft:dye:5>,
    <minecraft:stained_glass_pane:11>  : <minecraft:dye:4>,
    <minecraft:stained_glass_pane:12>  : <minecraft:dye:3>,
    <minecraft:stained_glass_pane:13>  : <minecraft:dye:2>,
    <minecraft:stained_glass_pane:14>  : <minecraft:dye:1>,
    <minecraft:stained_glass_pane:15>  : <minecraft:dye>
};

for pane, dye in panes {
    recipes.addShapeless(pane, [<minecraft:glass_pane>, dye]);
}
