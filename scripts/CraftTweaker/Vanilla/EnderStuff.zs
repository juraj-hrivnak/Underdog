
#priority -20

// // Replace Elite Circuit & Ultimate Circuit
// recipes.replaceAllOccurences(<minecraft:ender_pearl>, <mekanism:controlcircuit:2>, <*>);
// recipes.replaceAllOccurences(<minecraft:ender_eye>, <mekanism:controlcircuit:3>, <*>);

recipes.remove(<minecraft:ender_chest>);
recipes.addShapedMirrored(<minecraft:ender_chest>,
   [[<ore:plateGold>            , <ore:plateGold>         , <ore:stickIron>             ],
    [<mekanism:controlcircuit:3>, <mekanism:machineblock3>, <mekanism:controlcircuit:3> ],
    [<ore:stickIron>            , <ore:plateGold>         , <ore:plateGold>             ]]);

<ore:chestEnder>.remove(<minecraft:ender_chest>);
