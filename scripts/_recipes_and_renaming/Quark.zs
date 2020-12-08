import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded quark

print("--- loading Quark.zs ---");

#Iron Rod Braker
recipes.removeShaped(<quark:iron_rod>);
recipes.addShapedMirrored(<quark:iron_rod>,
    [[null, null, <ore:stickIron>],
    [null, <ore:stickIron>, null],
    [<ore:plateIron>, null, null]]);

print("--- Quark.zs initialized ---");