
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

<minecraft:end_rod>.displayName = game.localize("underdog.displayname.end_rod");

recipes.removeShaped(<minecraft:end_rod> * 4);
recipes.addShapedMirrored(<minecraft:end_rod> * 2,
   [[null               , <ore:plateAluminum>                      , null                ],
    [<ore:stickAluminum>, <immersiveengineering:fluorescent_tube:*>, <ore:stickAluminum> ],
    [null               , <ore:plateAluminum>                      , null                ]]);
