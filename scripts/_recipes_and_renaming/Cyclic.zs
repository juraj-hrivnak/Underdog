#modloaded cyclicmagic
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

recipes.remove(<cyclicmagic:dynamite_mining>);
recipes.addShaped(<cyclicmagic:dynamite_mining>, [
    [<minecraft:tnt>, <minecraft:paper>],
    [<minecraft:clay_ball>]
]);

recipes.remove(<cyclicmagic:ender_tnt_1>);
recipes.addShaped(<cyclicmagic:ender_tnt_1>, [
    [<minecraft:gunpowder>, <minecraft:gunpowder>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<minecraft:paper>, <minecraft:clay_ball>]
]);