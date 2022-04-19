
#modloaded tconstruct
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

<ore:torch>.remove(<tconstruct:stone_torch>);
rh(<tconstruct:stone_torch>);

// Refractory
val refracBrick = <pyrotech:material:5>;

// Casting Basin
RecipeUtils.tweakRecipe(true, <tconstruct:casting:1>, RecipeUtils.createSurround(null, refracBrick));

// Casting Table
RecipeUtils.tweakRecipe(true, <tconstruct:casting>,
   [[refracBrick, refracBrick, refracBrick ],
    [refracBrick, null       , refracBrick ],
    [refracBrick, null       , refracBrick ]]);

// Casting Channel
RecipeUtils.tweakRecipe(true, <tconstruct:channel>,
   [[null       , null       , null        ],
    [refracBrick, null       , refracBrick ],
    [refracBrick, refracBrick, refracBrick ]]);

// Casting Faucet
RecipeUtils.tweakRecipe(true, <tconstruct:faucet>,
   [[null       , null       , null        ],
    [refracBrick, null       , refracBrick ],
    [null       , refracBrick, null        ]]);
