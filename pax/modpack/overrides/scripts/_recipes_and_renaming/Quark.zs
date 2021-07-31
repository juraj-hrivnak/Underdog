#modloaded quark
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;


// Iron Rod Braker
recipes.removeShaped(<quark:iron_rod>);
recipes.addShapedMirrored(<quark:iron_rod>, [
    [null, null, <ore:stickIron>],
    [null, <ore:stickIron>, null],
    [<ore:plateIron>, null, null]
]);

// Backpack
recipes.addShapedMirrored(<quark:backpack>, [
    [<ore:fiberHemp>, <ore:itemLeather>, <ore:fiberHemp>],
    [<ore:itemLeather>, <ore:itemLeather>, <ore:itemLeather>],
    [<ore:itemLeather>, <ore:furCut>, <ore:itemLeather>]
]);

// Wheat Thatch
<quark:thatch>.displayName = "Wheat Thatch";
<quark:thatch_stairs>.displayName = "Wheat Thatch Stairs";
<quark:thatch_slab>.displayName = "Wheat Thatch Slab";