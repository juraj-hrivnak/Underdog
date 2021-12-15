
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

<minecraft:lever>.displayName = "Breaker Switch";
<minecraft:lever>.addTooltip("§aActs as Lever");

recipes.remove(<minecraft:lever>);
recipes.addShapedMirrored(<minecraft:lever>,
    [[<ore:ingotTin>, <minecraft:stick>],
    [<minecraft:stick>, <ore:plateIron>]]
);