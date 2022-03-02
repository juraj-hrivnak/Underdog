
#modloaded biomesoplenty
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

<biomesoplenty:gem_ore>.displayName = "Amethyst Ore";
<biomesoplenty:gem>.displayName = "Amethyst";

// Poison bucket recipe fix (bucket could be duped)
recipes.remove(<forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000}));
recipes.addShapeless("biomesoplenty_forge_bucketfilled_poison_dupefix", <forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000}),
[<minecraft:water_bucket>.noReturn(), <minecraft:spider_eye:*>, <minecraft:poisonous_potato:*>, <minecraft:sugar:*>]);

// Terrestrial Artifact
<biomesoplenty:terrestrial_artifact>.maxStackSize = 64;

// Honey
recipes.addShapeless(<biomesoplenty:honey_block> * 3, [<biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>, <biomesoplenty:hive:3>]);
recipes.addShapeless(<biomesoplenty:hive:3>, [<biomesoplenty:hive:1>, <biomesoplenty:filled_honeycomb>]);
recipes.addShapeless(<biomesoplenty:hive:1>, [<biomesoplenty:hive:2>, <biomesoplenty:filled_honeycomb>]);

// Grass
<ore:grass>.add(<biomesoplenty:grass:2>);
<ore:grass>.add(<biomesoplenty:grass:3>);
<ore:grass>.add(<biomesoplenty:grass:4>);
<ore:grass>.add(<biomesoplenty:grass:5>);
<ore:grass>.add(<biomesoplenty:grass:7>);

// Dirt
<ore:dirt>.add(<biomesoplenty:dirt:*>);
<ore:dirt>.add(<unlimitedchiselworks:chisel_dirt_biomesoplenty_dirt_0:*>);
<ore:dirt>.add(<unlimitedchiselworks:chisel_dirt_biomesoplenty_dirt_1:*>);
<ore:dirt>.add(<unlimitedchiselworks:chisel_dirt_biomesoplenty_dirt_2:*>);

// BoP Overgrown stone
recipes.addShapeless("Overgrown Stone1", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <minecraft:tallgrass:1>]);
recipes.addShapeless("Overgrown Stone2", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <ore:grass>]);
recipes.addShapeless("Overgrown Stone3", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <ore:vine>]);