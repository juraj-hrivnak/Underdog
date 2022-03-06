
#modloaded appliedenergistics2
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.jei.JEI.hide as h;

import scripts.CraftTweaker.Utils.RecipeUtils;

val crystals = <appliedenergistics2:material> | <appliedenergistics2:material:1> | <appliedenergistics2:material:10>;

<ore:meteorite>.add(<appliedenergistics2:sky_stone_block>);

// Renaming to Meteorite
<appliedenergistics2:sky_stone_block>.displayName =                 game.localize("underdog.displayname.sky_stone_block");
<appliedenergistics2:smooth_sky_stone_block>.displayName =          game.localize("underdog.displayname.smooth_sky_stone_block");
<appliedenergistics2:sky_stone_brick>.displayName =                 game.localize("underdog.displayname.sky_stone_brick");
<appliedenergistics2:sky_stone_small_brick>.displayName =           game.localize("underdog.displayname.sky_stone_small");
<appliedenergistics2:sky_stone_stairs>.displayName =                game.localize("underdog.displayname.sky_stone_stairs");
<appliedenergistics2:smooth_sky_stone_stairs>.displayName =         game.localize("underdog.displayname.smooth_sky_stone_stairs");
<appliedenergistics2:sky_stone_brick_stairs>.displayName =          game.localize("underdog.displayname.sky_stone_brick_stairs");
<appliedenergistics2:sky_stone_small_brick_stairs>.displayName =    game.localize("underdog.displayname.sky_stone_small_brick_stairs");
<appliedenergistics2:sky_stone_slab>.displayName =                  game.localize("underdog.displayname.sky_stone_slab");
<appliedenergistics2:smooth_sky_stone_slab>.displayName =           game.localize("underdog.displayname.smooth_sky_stone_slab");
<appliedenergistics2:sky_stone_brick_slab>.displayName =            game.localize("underdog.displayname.sky_stone_brick_slab");
<appliedenergistics2:sky_stone_small_brick_slab>.displayName =      game.localize("underdog.displayname.sky_stone_small_brick_slab");
<appliedenergistics2:material:45>.displayName =                     game.localize("underdog.displayname.ae_material_45");

// Hiding Facades
h(<appliedenergistics2:facade:*>);

// Removing grindstone
rh(<appliedenergistics2:grindstone>);
hc("appliedenergistics2.grinder");

// Removing flour
h(<appliedenergistics2:material:4>);
<ore:dustWheat>.remove(<appliedenergistics2:material:4>);
furnace.remove(<minecraft:bread>, <appliedenergistics2:material:4>);

// New recipe for Wireless Booster
RecipeUtils.tweakRecipe(true, <appliedenergistics2:material:42> * 6,
   [[<appliedenergistics2:material:8>   , crystals              ],
    [<minecraft:iron_ingot>             , <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
