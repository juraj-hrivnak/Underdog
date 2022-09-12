
#priority -20
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Commands;

import scripts.CraftTweaker.Utils.RecipeUtils;

val slabsFix as IItemStack[IItemStack] = {
    <minecraft:stone_slab:1>      : <divergentunderground:rock_sandstone>       ,
    <minecraft:stone_slab:4>      : <minecraft:brick>                           ,
    <minecraft:stone_slab:6>      : <minecraft:netherbrick>                     ,
    <minecraft:stone_slab:7>      : <minecraft:quartz>                          ,
    <minecraft:stone_slab2>       : <divergentunderground:rock_red_sandstone>   ,
    <minecraft:stone_slab:5>  * 6 : <minecraft:stonebrick>                      ,
    <minecraft:purpur_slab>   * 6 : <minecraft:purpur_block>
};

for output, input in slabsFix {
    recipes.addShaped(output, [[input, input]]);
}

// cobblestone => Cobblestone Slab
RecipeUtils.tweakRecipe(true, <minecraft:stone_slab:3> * 4, [[<ore:cobblestone>, <ore:cobblestone>]]);

// Rocks => Cobblestone Slab
recipes.addShaped(<minecraft:stone_slab:3>,
   [[<ore:rocks>, <ore:rocks>]],
    null,
    function(out, cInfo, player) {
        Commands.call("playsound futuremc:stonecutter_carve block @a[r=16] " + player.x + " " + player.y + " " + player.z, player, player.world);
    }
);

// Cobblestone
recipes.addShaped(<minecraft:cobblestone>,
   [[<minecraft:stone_slab:3>],
    [<minecraft:stone_slab:3>]],
    null,
    function(out, cInfo, player) {
        Commands.call("playsound futuremc:stonecutter_carve block @a[r=16] " + player.x + " " + player.y + " " + player.z, player, player.world);
    }
);
