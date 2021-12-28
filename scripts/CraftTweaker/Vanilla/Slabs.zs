
#priority -20
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val slabsFix as IItemStack[IItemStack] = {
    <minecraft:stone_slab:1>  : <divergentunderground:rock_sandstone>,
    <minecraft:stone_slab:4>  : <minecraft:brick>,
    <minecraft:stone_slab:5>  : <minecraft:stonebrick>,
    <minecraft:stone_slab:6>  : <minecraft:netherbrick>,
    <minecraft:stone_slab:7>  : <minecraft:quartz>,
    <minecraft:stone_slab2>   : <divergentunderground:rock_red_sandstone>,
    <minecraft:purpur_slab>   : <minecraft:purpur_block>
};

for output, input in slabsFix {
    recipes.addShaped(output * 6, [[input, input, input]]);
}

// Cobblestone Slab
recipes.removeShaped(<minecraft:stone_slab:3>);
recipes.addShaped(<minecraft:stone_slab:3> * 6, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);