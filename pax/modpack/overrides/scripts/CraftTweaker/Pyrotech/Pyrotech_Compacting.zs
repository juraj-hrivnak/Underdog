
#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;

// Netherrack
CompactingBin.removeRecipes(<minecraft:netherrack>);
MechanicalCompactor.removeRecipes(<minecraft:netherrack>);

// Gravel
CompactingBin.removeRecipes(<minecraft:gravel>);
MechanicalCompactor.removeRecipes(<minecraft:gravel>);

// Dirt
CompactingBin.removeRecipes(<minecraft:dirt>);
MechanicalCompactor.removeRecipes(<minecraft:dirt>);
recipes.addShaped(<minecraft:dirt>,
   [[<pyrotech:rock:4>                        , <pyrotech:rock:4>                         ],
    [<pyrotech:rock_grass> | <pyrotech:rock:4>, <pyrotech:rock_grass> | <pyrotech:rock:4> ]]);

// Grass
CompactingBin.removeRecipes(<minecraft:grass>);
MechanicalCompactor.removeRecipes(<minecraft:grass>);
recipes.addShaped(<minecraft:grass>,
   [[<pyrotech:rock_grass>                    , <pyrotech:rock_grass>                     ],
    [<pyrotech:rock_grass> | <pyrotech:rock:4>, <pyrotech:rock_grass> | <pyrotech:rock:4> ]]);

// Sand
CompactingBin.removeRecipes(<minecraft:sand>);
MechanicalCompactor.removeRecipes(<minecraft:sand>);
recipes.addShaped(<minecraft:sand>,
   [[<pyrotech:rock:5>, <pyrotech:rock:5> ],
    [<pyrotech:rock:5>, <pyrotech:rock:5> ]]);

// Red Sand
CompactingBin.removeRecipes(<minecraft:sand:1>);
MechanicalCompactor.removeRecipes(<minecraft:sand:1>);
recipes.addShaped(<minecraft:sand:1>,
   [[<pyrotech:rock:9>, <pyrotech:rock:9> ],
    [<pyrotech:rock:9>, <pyrotech:rock:9> ]]);
