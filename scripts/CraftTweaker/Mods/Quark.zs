
#modloaded quark
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

<ore:shardGlass>.addItems([
    <quark:glass_shards:1>,
    <quark:glass_shards:2>,
    <quark:glass_shards:3>,
    <quark:glass_shards:4>,
    <quark:glass_shards:5>,
    <quark:glass_shards:6>,
    <quark:glass_shards:7>,
    <quark:glass_shards:8>,
    <quark:glass_shards:9>,
    <quark:glass_shards:10>,
    <quark:glass_shards:11>,
    <quark:glass_shards:12>,
    <quark:glass_shards:13>,
    <quark:glass_shards:14>,
    <quark:glass_shards:15>,
    <quark:glass_shards:16>,
]);

// Recipe fixes
recipes.removeByRecipeName("quark:trapdoor");
recipes.removeByRecipeName("quark:bookshelf");

// Iron Rod Braker
recipes.removeShaped(<quark:iron_rod>);
recipes.addShapedMirrored(<quark:iron_rod>,
   [[null           , null           , <ore:stickIron> ],
    [null           , <ore:stickIron>, null            ],
    [<ore:plateIron>, null           , null            ]]);

// Backpack
recipes.addShapedMirrored(<quark:backpack>,
   [[<ore:fiberHemp>  , <ore:itemLeather>, <ore:fiberHemp>   ],
    [<ore:itemLeather>, <ore:itemLeather>, <ore:itemLeather> ],
    [<ore:itemLeather>, null             , <ore:itemLeather> ]]);

// Wheat Thatch
<quark:thatch>.displayName = game.localize("underdog.displayname.thatch");
<quark:thatch_stairs>.displayName = game.localize("underdog.displayname.thatch_stairs");
<quark:thatch_slab>.displayName = game.localize("underdog.displayname.thatch_slab");
