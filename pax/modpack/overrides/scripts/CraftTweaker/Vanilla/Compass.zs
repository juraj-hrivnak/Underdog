
import crafttweaker.item.IItemStack;

<minecraft:compass>.addTooltip(game.localize("underdog.tooltip.compass.1"));
<minecraft:compass>.addTooltip(game.localize("underdog.tooltip.compass.2"));

recipes.removeShaped(<minecraft:compass>);
recipes.addShapedMirrored(<minecraft:compass>,
[[null           , <ore:ingotIron> , null            ],
 [<ore:ingotIron>, <ore:nuggetIron>, <ore:ingotIron> ],
 [null           , <ore:ingotIron> , null            ]]);
