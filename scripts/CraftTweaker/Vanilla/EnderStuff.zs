
#priority -20

/* Replacing Elite Circuit & Ultimate Circuit */
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <mekanism:controlcircuit:2>, <*>);
recipes.replaceAllOccurences(<minecraft:ender_eye>, <mekanism:controlcircuit:3>, <*>);

recipes.remove(<minecraft:ender_chest>);
recipes.addShapedMirrored(<minecraft:ender_chest>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:stickIron>],
    [<ore:ingotEnderium>, <mekanism:machineblock3>, <ore:ingotEnderium>],
    [<ore:stickIron>, <ore:plateGold>, <ore:plateGold>]
]);

<ore:chestEnder>.remove(<minecraft:ender_chest>);