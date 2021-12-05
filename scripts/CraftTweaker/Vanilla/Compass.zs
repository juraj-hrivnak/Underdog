
import crafttweaker.item.IItemStack as IItemStack;

<minecraft:compass>.addTooltip("Hold in the main hand to enable the Journey Map.");

recipes.removeShaped(<minecraft:compass>);
recipes.addShapedMirrored(<minecraft:compass>, [
    [null, <ore:ingotIron>, null],
    [<ore:ingotIron>, <ore:nuggetIron>, <ore:ingotIron>],
    [null, <ore:ingotIron>, <appliedenergistics2:material:45>]
]);