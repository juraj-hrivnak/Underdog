
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

<minecraft:lever>.displayName = game.localize("underdog.displayname.lever");
<minecraft:lever>.addTooltip(game.localize("underdog.tooltip.lever"));

recipes.remove(<minecraft:lever>);
recipes.addShapedMirrored(<minecraft:lever>,
   [[<ore:ingotTin>, <minecraft:stick>],
    [<minecraft:stick>, <ore:plateIron>]]);
