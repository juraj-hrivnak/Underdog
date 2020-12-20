#modloaded faunaandecology
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

recipes.addShaped(<faunaandecology:knife_wood>, [
    [ null, <ore:plankWood>],
    [<ore:stickWood>, null]
]);
recipes.addShaped(<faunaandecology:knife_stone>, [
    [ null, <ore:rocksHard>],
    [<ore:stickWood>, null]
]);
recipes.addShaped(<faunaandecology:knife_iron>, [
    [ null, <ore:ingotIron>],
    [<ore:stickWood>, null]
]);
recipes.addShaped(<faunaandecology:knife_gold>, [
    [ null, <ore:ingotGold>],
    [<ore:stickWood>, null]
]);
recipes.addShaped(<faunaandecology:knife_diamond>, [
    [ null, <ore:gemDiamond>],
    [<ore:stickWood>, null]
]);
recipes.addShaped(<faunaandecology:knife_flint>, [
    [ null, <minecraft:flint>],
    [<ore:stickWood>, null]
]);

// Bone Shards recipes
recipes.removeShaped(<faunaandecology:shards_bone>);
recipes.removeShaped(<minecraft:dye:15>);

// Bone Marrow
recipes.removeShapeless(<faunaandecology:bone_marrow> * 1, [<minecraft:bone>]);