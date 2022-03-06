
#norun
#modloaded fishingmadebetter
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

recipes.removeShaped(<minecraft:fishing_rod>);
recipes.removeShaped(<fishingmadebetter:diamond_fishing_rod>);
recipes.removeShaped(<fishingmadebetter:basic_fishing_rod>);
recipes.removeShaped(<fishingmadebetter:iron_fishing_rod>);

<fishingmadebetter:diamond_fishing_rod>.displayName = game.localize("underdog.displayname.diamond_fishing_rod");

recipes.addShapedMirrored(<fishingmadebetter:diamond_fishing_rod>,
   [[null, null, <ore:ingotOsmium>],
    [null, <ore:ingotSilver>, <ore:string>],
    [<ore:ingotOsmium>, null, <ore:string>]]);

recipes.addShapedMirrored(<fishingmadebetter:iron_fishing_rod>,
   [[null, null, <ore:ingotIron>],
    [null, <ore:ingotIron>, <ore:string>],
    [<ore:ingotIron>, null, <ore:string>]]);

recipes.addShapedMirrored(<fishingmadebetter:basic_fishing_rod>,
   [[null, null, <ore:stickWood>],
    [null, <ore:stickWood>, <ore:string>],
    [<ore:stickWood>, null, <ore:string>]]);
