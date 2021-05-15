#modloaded appliedenergistics2
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.appliedenergistics2.Grinder;

val crystals = <appliedenergistics2:material> | <appliedenergistics2:material:1> | <appliedenergistics2:material:10>;

// Ender Pearl Dust recipe remove
Grinder.removeRecipe(<minecraft:ender_pearl>);

// Renaming to Meteorite
<appliedenergistics2:sky_stone_block>.displayName =                 "Meteorite";
<appliedenergistics2:smooth_sky_stone_block>.displayName =          "Smooth Meteorite Block";
<appliedenergistics2:sky_stone_brick>.displayName =                 "Meteorite brick";
<appliedenergistics2:sky_stone_small_brick>.displayName =           "Meteorite Small Brick";
<appliedenergistics2:sky_stone_chest>.displayName =                 "Meteorite Chest";
<appliedenergistics2:smooth_sky_stone_chest>.displayName =          "Smooth Meteorite Chest";
<appliedenergistics2:sky_stone_stairs>.displayName =                "Meteorite Stairs";
<appliedenergistics2:smooth_sky_stone_stairs>.displayName =         "Smooth Stairs Meteorite";
<appliedenergistics2:sky_stone_brick_stairs>.displayName =          "Meteorite Brick Stairs";
<appliedenergistics2:sky_stone_small_brick_stairs>.displayName =    "Meteorite Small Brick Stairs";
<appliedenergistics2:sky_stone_slab>.displayName =                  "Meteorite Slabs";
<appliedenergistics2:smooth_sky_stone_slab>.displayName =           "Smooth Slab Meteorite";
<appliedenergistics2:sky_stone_brick_slab>.displayName =            "Meteorite Brick Slab";
<appliedenergistics2:sky_stone_small_brick_slab>.displayName =      "Meteorite Small Brick Slab";
<appliedenergistics2:material:45>.displayName =                     "Meteorite Dust";

// Hiding Facades
rh(<appliedenergistics2:facade>);

// New recipe for Wireless Booster
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped("wireless_booster_fixed", <appliedenergistics2:material:42> * 6,
    [[<appliedenergistics2:material:8>, crystals, <thermalfoundation:material:103>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);