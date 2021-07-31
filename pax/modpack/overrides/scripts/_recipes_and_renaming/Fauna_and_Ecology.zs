#modloaded faunaandecology
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

//Resin - slime ball oredict
<ore:slimeball>.add(<faunaandecology:resin>);
<ore:slimeballMagma>.add(<faunaandecology:resin>);

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

//Bone Shards recipes
recipes.removeShaped(<faunaandecology:shards_bone>);
recipes.removeShaped(<minecraft:dye:15>);

//Bone Marrow
recipes.removeShapeless(<faunaandecology:bone_marrow> * 1, [<minecraft:bone>]);

//Raw meat oredicts
val rawMeats = [
    <faunaandecology:porkchop_boar_raw>,
    <faunaandecology:junglefowl_raw>,
    <faunaandecology:mutton_mouflon_raw>,
    <faunaandecology:beef_aurochs_raw>,
    <faunaandecology:mallard_raw>,
    <faunaandecology:duck_raw>,
    <faunaandecology:beef_wild_mooshroom_raw>,
    <faunaandecology:beef_mooshroom_raw>,
    <faunaandecology:horse_meat>,
    <faunaandecology:wild_horse_meat>,
    <faunaandecology:donkey_meat>,
    <faunaandecology:wild_ass_meat>,
    <faunaandecology:zebra_meat>,
    <faunaandecology:quagga_meat>,
    <faunaandecology:guanaco_meat>,
    <faunaandecology:llama_meat>,
    <faunaandecology:raw_bat>,
    <faunaandecology:calamari>
] as IItemStack[];

for i in rawMeats {
    <ore:listAllmeatraw>.add(i);
}

//Cooked meat oredicts
val cookedMeats = [
    <faunaandecology:duck_cooked>,
    <faunaandecology:cooked_horse_meat>,
    <faunaandecology:cooked_donkey_meat>,
    <faunaandecology:cooked_zebra_meat>,
    <faunaandecology:cooked_llama_meat>,
    <faunaandecology:cooked_bat>,
    <faunaandecology:cooked_calamari>
] as IItemStack[];

for i in cookedMeats {
    <ore:listAllmeatcooked>.add(i);
}
