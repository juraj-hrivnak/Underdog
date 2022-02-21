
import crafttweaker.item.IItemStack as IItemStack;

<minecraft:compass>.addTooltip("Hold in the main hand");
<minecraft:compass>.addTooltip("to enable Journey Map.");

recipes.removeShaped(<minecraft:compass>);
recipes.addShapedMirrored(<minecraft:compass>,
[[null           , <ore:ingotIron> , null            ],
 [<ore:ingotIron>, <ore:nuggetIron>, <ore:ingotIron> ],
 [null           , <ore:ingotIron> , null            ]]);