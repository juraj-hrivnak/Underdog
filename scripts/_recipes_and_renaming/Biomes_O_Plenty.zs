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

// Honey Block -> Honey Drop
	mods.forestry.Centrifuge.addRecipe([(<forestry:honey_drop> * 5) % 80, (<thermalfoundation:material:99> % 25), (<thermalfoundation:material:100> % 25)], <biomesoplenty:honey_block>, 100);
	mods.thermalexpansion.Centrifuge.addRecipe([(<forestry:honey_drop>) * 5 % 80, <thermalfoundation:material:99> % 25, <thermalfoundation:material:100> % 25], <biomesoplenty:honey_block>, null, 2000);

// BoP Grass, Dirts.
	<ore:grass>.add(<biomesoplenty:grass:2>);
	<ore:grass>.add(<biomesoplenty:grass:3>);
	<ore:grass>.add(<biomesoplenty:grass:4>);
	<ore:grass>.add(<biomesoplenty:grass:5>);
	<ore:grass>.add(<biomesoplenty:grass:7>);

// recipes.addShaped("BoP Flowering Grass", <biomesoplenty:grass:7> * 8, [[<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>],[<ore:grass>, <minecraft:red_flower:8>, <ore:grass>], [<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>]]);
// recipes.addShaped("BoP Silty Grass", <biomesoplenty:grass:4> * 8, [[<ore:sand>, <ore:grass>, <ore:sand>],[<ore:gravel>, <ore:dirt>, <ore:gravel>], [<ore:sand>, <ore:grass>, <ore:sand>]]);
// recipes.addShaped("BoP Sandy Grass", <biomesoplenty:grass:3> * 8, [[<ore:sand>, <ore:grass>, <ore:sand>],[<ore:grass>, <ore:dirt>, <ore:grass>], [<ore:sand>, <ore:grass>, <ore:sand>]]);
// recipes.addShaped("BoP Loamy Grass", <biomesoplenty:grass:2> * 8, [[<ore:grass>, <ore:grass>, <ore:grass>],[<ore:grass>, <ore:listAllwater>, <ore:grass>], [<ore:grass>, <ore:grass>, <ore:grass>]]);
// recipes.addShaped("BoP Silty Dirt", <biomesoplenty:dirt:2> * 8, [[<ore:sand>, <ore:dirt>, <ore:sand>],[<ore:gravel>, <ore:dirt>, <ore:gravel>], [<ore:sand>, <ore:dirt>, <ore:sand>]]);
// recipes.addShaped("BoP Sandy Dirt", <biomesoplenty:dirt:1> * 8, [[<ore:sand>, <ore:dirt>, <ore:sand>],[<ore:dirt>, <ore:dirt>, <ore:dirt>], [<ore:sand>, <ore:dirt>, <ore:sand>]]);
// recipes.addShaped("BoP Loamy Dirt", <biomesoplenty:dirt> * 8, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>, <ore:listAllwater>, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

// BoP Overgrown stone
	recipes.addShapeless("Overgrown Stone1", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <minecraft:tallgrass:1>]);
	recipes.addShapeless("Overgrown Stone2", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <ore:grass>]);
	recipes.addShapeless("Overgrown Stone3", <biomesoplenty:grass:1>, [<minecraft:stone:*>, <ore:vine>]);