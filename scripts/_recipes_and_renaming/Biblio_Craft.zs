#modloaded antiqueatlas
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val framedChests = [
    <bibliocraft:framedchest>,
    <bibliocraft:framedchest:1>,
    <bibliocraft:framedchest:2>,
    <bibliocraft:framedchest:3>,
    <bibliocraft:framedchest:4>,
    <bibliocraft:framedchest:5>,
    <bibliocraft:framedchest:6>
] as IItemStack[];
for i in framedChests {
    recipes.remove(i);
}

// Framed chests
recipes.addShaped(<bibliocraft:framedchest>, [
    [<minecraft:planks>, <bibliocraft:label>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:1>, [
    [<minecraft:planks:1>, <bibliocraft:label:1>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:2>, [
    [<minecraft:planks:2>, <bibliocraft:label:2>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:3>, [
    [<minecraft:planks:3>, <bibliocraft:label:3>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:4>, [
    [<minecraft:planks:4>, <bibliocraft:label:4>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:5>, [
    [<minecraft:planks:5>, <bibliocraft:label:5>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>]
]);
recipes.addShaped(<bibliocraft:framedchest:6>, [
    [<bibliocraft:framingsheet>, <bibliocraft:label:6>, <bibliocraft:framingsheet>],
    [<ore:stickIron> | <ore:stickSteel>, <ore:plateIron> | <ore:plateSteel>, <bibliocraft:framingsheet>]
]);