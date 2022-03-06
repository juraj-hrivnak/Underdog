#modloaded scannable
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val circuit = <mekanism:controlcircuit:1> | <immersiveengineering:material:27>;

RecipeUtils.tweakRecipe(true, <scannable:scanner>,
   [[<ore:wireAluminum>           , null              , <ore:wireAluminum>            ],
    [<ore:plateIron>              , circuit           , <ore:plateIron>               ],
    [<forestry:thermionic_tubes:4>, <ore:wireAluminum>, <forestry:thermionic_tubes:4> ]]);

RecipeUtils.tweakRecipe(false, <scannable:module_range>, [[<scannable:module_blank>, circuit]]);

RecipeUtils.tweakRecipe(true, <scannable:module_blank>,
   [[<ore:dyeGreen>  , <ore:dyeGreen>         , <ore:dyeGreen>   ],
    [<ore:itemRubber>, <minecraft:redstone>   , <ore:itemRubber> ],
    [<ore:itemRubber>, <minecraft:gold_nugget>, <ore:itemRubber> ]]);

// It's bugged out
rh(<scannable:module_structure>);
