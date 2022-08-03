
import scripts.CraftTweaker.Utils.RecipeUtils;

var bonemeal = <minecraft:dye:15>;

// Oredicts
<ore:fertilizer>.add(bonemeal);
<ore:dyeWhite>.remove(bonemeal);
<ore:dye>.remove(bonemeal);

//Renaming, Adding Tooltip
bonemeal.displayName = game.localize("underdog.displayname.bonemeal");
bonemeal.addTooltip(game.localize("underdog.tooltip.bonemeal"));

//Adding new bonemeal recipe
RecipeUtils.tweakRecipe(false, bonemeal * 2, [[<ore:bone>]]);
