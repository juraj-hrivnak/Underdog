import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Prospector's Pick
recipes.removeShaped(<geolosys:pro_pick>);
recipes.addShaped(<geolosys:pro_pick>, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:stickWood>, <ore:ingotIron>],
    [null, <ore:stickWood>, null]
]);
recipes.addShaped(<geolosys:pro_pick>, [
    [<ore:ingotPigiron>, <ore:ingotPigiron>, <ore:ingotPigiron>],
    [null, <ore:stickWood>, <ore:ingotPigiron>],
    [null, <ore:stickWood>, null]
]);