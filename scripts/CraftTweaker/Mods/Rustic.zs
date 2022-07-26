#modloaded rustic
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Barley Crushing Tub recipe
mods.rustic.CrushingTub.addRecipe(<liquid:edible_oil> * 10, <harvestcraft:barleyitem> * 2, <biomesoplenty:plant_1:11>);

<rustic:crushing_tub>.addTooltip(game.localize("underdog.tooltip.crushing_tub"));

RecipeUtils.tweakRecipe(true, <rustic:evaporating_basin>,
   [[<ore:ingotBrick>, null            , <ore:ingotBrick> ],
    [null            , <ore:ingotBrick>, null             ]]);


val clayLump = <pyrotech:material:17>;

// Pot
recipes.addShaped(<contenttweaker:unfired_pot>,
    RecipeUtils.createCrossWithCore(null, clayLump, <ore:clayball>));

// Vase
recipes.remove(<rustic:vase>);

// Crop Stake 4x
RecipeUtils.tweakRecipe(true, <rustic:crop_stake> * 4,
   [[<ore:lumber>],
    [<ore:lumber>],
    [<ore:lumber>]]);

