#modloaded scannable
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val circuit = <mekanism:controlcircuit:1> | <immersiveengineering:material:27>;

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [
    [<ore:wireAluminum>, null, <ore:wireAluminum>],
    [<ore:plateIron>, circuit, <ore:plateIron>],
    [<forestry:thermionic_tubes:4>, <ore:wireAluminum>, <forestry:thermionic_tubes:4>]
]);

recipes.remove(<scannable:module_range>);
recipes.addShapeless(<scannable:module_range>, [<scannable:module_blank>, circuit]);

recipes.remove(<scannable:module_blank>);
recipes.addShaped(<scannable:module_blank>, [
    [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],
    [<ore:itemRubber>, <minecraft:redstone>, <ore:itemRubber>],
    [<ore:itemRubber>, <minecraft:gold_nugget>, <ore:itemRubber>]
]);

// It's bugged out
rh(<scannable:module_structure>);