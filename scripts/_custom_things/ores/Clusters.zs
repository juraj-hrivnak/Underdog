#priority 12
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.AxisAlignedBB;

// Thorium ore / Monazite
var monazite = VanillaFactory.createBlock("monazite", <blockmaterial:rock>);
monazite.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:nuclearcraft:ore:3>);
        return;
});
monazite.fullBlock = true;
monazite.translucent = false;
monazite.lightValue = 0.1;
monazite.blockHardness = 2.5;
monazite.blockResistance = 15.0;
monazite.toolClass = "pickaxe";
monazite.toolLevel = 1;
monazite.blockSoundType = <soundtype:stone>;
monazite.setCreativeTab(<creativetab:misc>);
monazite.register();

// Boron ore / Sassolite
var sassolite = VanillaFactory.createBlock("sassolite", <blockmaterial:rock>);
sassolite.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:nuclearcraft:ore:5>);
        return;
});
sassolite.fullBlock = true;
sassolite.translucent = false;
sassolite.blockHardness = 2.5;
sassolite.blockResistance = 15.0;
sassolite.toolClass = "pickaxe";
sassolite.toolLevel = 1;
sassolite.blockSoundType = <soundtype:stone>;
sassolite.setCreativeTab(<creativetab:misc>);
sassolite.register();

// Borax ore
var borax = VanillaFactory.createBlock("borax", <blockmaterial:rock>);
borax.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:nuclearcraft:compound:7> * 4);
        return;
});
borax.fullBlock = true;
borax.translucent = false;
borax.blockHardness = 2.5;
borax.blockResistance = 15.0;
borax.toolClass = "pickaxe";
borax.toolLevel = 1;
borax.blockSoundType = <soundtype:stone>;
borax.setCreativeTab(<creativetab:misc>);
borax.register();

// Lithium ore / Lepidolite
var lepidolite = VanillaFactory.createBlock("lepidolite", <blockmaterial:rock>);
lepidolite.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:nuclearcraft:ore:6>);
        return;
});
lepidolite.fullBlock = true;
lepidolite.translucent = false;
lepidolite.blockHardness = 2.5;
lepidolite.blockResistance = 15.0;
lepidolite.toolClass = "pickaxe";
lepidolite.toolLevel = 1;
lepidolite.blockSoundType = <soundtype:stone>;
lepidolite.setCreativeTab(<creativetab:misc>);
lepidolite.register();

// Magnesium ore / Iron, *Magnesite, Dolomite
var magnesite = VanillaFactory.createBlock("magnesite", <blockmaterial:rock>);
magnesite.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:nuclearcraft:ore:7>);
        return;
});
magnesite.fullBlock = true;
magnesite.translucent = false;
magnesite.blockHardness = 2.5;
magnesite.blockResistance = 15.0;
magnesite.toolClass = "pickaxe";
magnesite.toolLevel = 1;
magnesite.blockSoundType = <soundtype:stone>;
magnesite.setCreativeTab(<creativetab:misc>);
magnesite.register();

// Samples
// Thorium Sample / Monazite
var monazite_sample = VanillaFactory.createBlock("monazite_sample", <blockmaterial:rock>);
monazite_sample.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
monazite_sample.gravity = true;
monazite_sample.lightOpacity = 255;
monazite_sample.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.2d, 0.8d));
monazite_sample.fullBlock = false;
monazite_sample.translucent = false;
monazite_sample.blockHardness = 0.05;
monazite_sample.blockResistance = 3.0;
monazite_sample.toolClass = "pickaxe";
monazite_sample.toolLevel = 0;
monazite_sample.blockSoundType = <soundtype:stone>;
monazite_sample.setCreativeTab(<creativetab:misc>);
monazite_sample.register();

// Boron Sample / Sassolite
var sassolite_sample = VanillaFactory.createBlock("sassolite_sample", <blockmaterial:rock>);
sassolite_sample.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
sassolite_sample.gravity = true;
sassolite_sample.lightOpacity = 255;
sassolite_sample.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.2d, 0.8d));
sassolite_sample.fullBlock = false;
sassolite_sample.translucent = false;
sassolite_sample.blockHardness = 0.05;
sassolite_sample.blockResistance = 3.0;
sassolite_sample.toolClass = "pickaxe";
sassolite_sample.toolLevel = 0;
sassolite_sample.blockSoundType = <soundtype:stone>;
sassolite_sample.setCreativeTab(<creativetab:misc>);
sassolite_sample.register();

// Borax Sample
var borax_sample = VanillaFactory.createBlock("borax_sample", <blockmaterial:rock>);
borax_sample.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
borax_sample.gravity = true;
borax_sample.lightOpacity = 255;
borax_sample.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.2d, 0.8d));
borax_sample.fullBlock = false;
borax_sample.translucent = false;
borax_sample.blockHardness = 0.05;
borax_sample.blockResistance = 3.0;
borax_sample.toolClass = "pickaxe";
borax_sample.toolLevel = 0;
borax_sample.blockSoundType = <soundtype:stone>;
borax_sample.setCreativeTab(<creativetab:misc>);
borax_sample.register();

// Lithium Sample / Lepidolite
var lepidolite_sample = VanillaFactory.createBlock("lepidolite_sample", <blockmaterial:rock>);
lepidolite_sample.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
lepidolite_sample.gravity = true;
lepidolite_sample.lightOpacity = 255;
lepidolite_sample.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.2d, 0.8d));
lepidolite_sample.fullBlock = false;
lepidolite_sample.translucent = false;
lepidolite_sample.blockHardness = 0.05;
lepidolite_sample.blockResistance = 3.0;
lepidolite_sample.toolClass = "pickaxe";
lepidolite_sample.toolLevel = 0;
lepidolite_sample.blockSoundType = <soundtype:stone>;
lepidolite_sample.setCreativeTab(<creativetab:misc>);
lepidolite_sample.register();

// Magnesium Sample / Iron, *Magnesite, Dolomite
var magnesite_sample = VanillaFactory.createBlock("magnesite_sample", <blockmaterial:rock>);
magnesite_sample.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
magnesite_sample.gravity = true;
magnesite_sample.lightOpacity = 255;
magnesite_sample.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.2d, 0.8d));
magnesite_sample.fullBlock = false;
magnesite_sample.translucent = false;
magnesite_sample.blockHardness = 0.05;
magnesite_sample.blockResistance = 3.0;
magnesite_sample.toolClass = "pickaxe";
magnesite_sample.toolLevel = 0;
magnesite_sample.blockSoundType = <soundtype:stone>;
magnesite_sample.setCreativeTab(<creativetab:misc>);
magnesite_sample.register();