#priority 11
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Facing;
import mods.contenttweaker.AxisAlignedBB;

//Firewood Oak
var firewood_oak = VanillaFactory.createBlock("firewood_oak", <blockmaterial:wood>);
firewood_oak.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_oak.fullBlock = false;
firewood_oak.lightOpacity = 100;
firewood_oak.blockHardness = 1.5;
firewood_oak.blockResistance = 15.0;
firewood_oak.toolClass = "axe";
firewood_oak.toolLevel = 0;
firewood_oak.blockSoundType = <soundtype:wood>;
firewood_oak.setCreativeTab(<creativetab:misc>);
firewood_oak.register();

//Firewood Spruce
var firewood_spruce = VanillaFactory.createBlock("firewood_spruce", <blockmaterial:wood>);
firewood_spruce.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_spruce.fullBlock = false;
firewood_spruce.lightOpacity = 100;
firewood_spruce.blockHardness = 1.5;
firewood_spruce.blockResistance = 15.0;
firewood_spruce.toolClass = "axe";
firewood_spruce.toolLevel = 0;
firewood_spruce.blockSoundType = <soundtype:wood>;
firewood_spruce.setCreativeTab(<creativetab:misc>);
firewood_spruce.register();

//Firewood Birch
var firewood_birch = VanillaFactory.createBlock("firewood_birch", <blockmaterial:wood>);
firewood_birch.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_birch.fullBlock = false;
firewood_birch.lightOpacity = 100;
firewood_birch.blockHardness = 1.5;
firewood_birch.blockResistance = 15.0;
firewood_birch.toolClass = "axe";
firewood_birch.toolLevel = 0;
firewood_birch.blockSoundType = <soundtype:wood>;
firewood_birch.setCreativeTab(<creativetab:misc>);
firewood_birch.register();

//Firewood Jungle
var firewood_jungle = VanillaFactory.createBlock("firewood_jungle", <blockmaterial:wood>);
firewood_jungle.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_jungle.fullBlock = false;
firewood_jungle.lightOpacity = 100;
firewood_jungle.blockHardness = 1.5;
firewood_jungle.blockResistance = 15.0;
firewood_jungle.toolClass = "axe";
firewood_jungle.toolLevel = 0;
firewood_jungle.blockSoundType = <soundtype:wood>;
firewood_jungle.setCreativeTab(<creativetab:misc>);
firewood_jungle.register();

//Firewood Acacia
var firewood_acacia = VanillaFactory.createBlock("firewood_acacia", <blockmaterial:wood>);
firewood_acacia.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_acacia.fullBlock = false;
firewood_acacia.lightOpacity = 100;
firewood_acacia.blockHardness = 1.5;
firewood_acacia.blockResistance = 15.0;
firewood_acacia.toolClass = "axe";
firewood_acacia.toolLevel = 0;
firewood_acacia.blockSoundType = <soundtype:wood>;
firewood_acacia.setCreativeTab(<creativetab:misc>);
firewood_acacia.register();

//Firewood Dark_Oak
var firewood_dark_oak = VanillaFactory.createBlock("firewood_dark_oak", <blockmaterial:wood>);
firewood_dark_oak.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_dark_oak.fullBlock = false;
firewood_dark_oak.lightOpacity = 100;
firewood_dark_oak.blockHardness = 1.5;
firewood_dark_oak.blockResistance = 15.0;
firewood_dark_oak.toolClass = "axe";
firewood_dark_oak.toolLevel = 0;
firewood_dark_oak.blockSoundType = <soundtype:wood>;
firewood_dark_oak.setCreativeTab(<creativetab:misc>);
firewood_dark_oak.register();

// 
// Biomes O Plenty
var firewood_sacred_oak = VanillaFactory.createBlock("firewood_sacred_oak", <blockmaterial:wood>);
firewood_sacred_oak.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_sacred_oak.fullBlock = false;
firewood_sacred_oak.lightOpacity = 100;
firewood_sacred_oak.blockHardness = 1.5;
firewood_sacred_oak.blockResistance = 15.0;
firewood_sacred_oak.toolClass = "axe";
firewood_sacred_oak.toolLevel = 0;
firewood_sacred_oak.blockSoundType = <soundtype:wood>;
firewood_sacred_oak.setCreativeTab(<creativetab:misc>);
firewood_sacred_oak.register();

var firewood_cherry = VanillaFactory.createBlock("firewood_cherry", <blockmaterial:wood>);
firewood_cherry.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_cherry.fullBlock = false;
firewood_cherry.lightOpacity = 100;
firewood_cherry.blockHardness = 1.5;
firewood_cherry.blockResistance = 15.0;
firewood_cherry.toolClass = "axe";
firewood_cherry.toolLevel = 0;
firewood_cherry.blockSoundType = <soundtype:wood>;
firewood_cherry.setCreativeTab(<creativetab:misc>);
firewood_cherry.register();

var firewood_umbran = VanillaFactory.createBlock("firewood_umbran", <blockmaterial:wood>);
firewood_umbran.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_umbran.fullBlock = false;
firewood_umbran.lightOpacity = 100;
firewood_umbran.blockHardness = 1.5;
firewood_umbran.blockResistance = 15.0;
firewood_umbran.toolClass = "axe";
firewood_umbran.toolLevel = 0;
firewood_umbran.blockSoundType = <soundtype:wood>;
firewood_umbran.setCreativeTab(<creativetab:misc>);
firewood_umbran.register();

var firewood_fir = VanillaFactory.createBlock("firewood_fir", <blockmaterial:wood>);
firewood_fir.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_fir.fullBlock = false;
firewood_fir.lightOpacity = 100;
firewood_fir.blockHardness = 1.5;
firewood_fir.blockResistance = 15.0;
firewood_fir.toolClass = "axe";
firewood_fir.toolLevel = 0;
firewood_fir.blockSoundType = <soundtype:wood>;
firewood_fir.setCreativeTab(<creativetab:misc>);
firewood_fir.register();

var firewood_ethereal = VanillaFactory.createBlock("firewood_ethereal", <blockmaterial:wood>);
firewood_ethereal.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_ethereal.fullBlock = false;
firewood_ethereal.lightOpacity = 100;
firewood_ethereal.blockHardness = 1.5;
firewood_ethereal.blockResistance = 15.0;
firewood_ethereal.toolClass = "axe";
firewood_ethereal.toolLevel = 0;
firewood_ethereal.blockSoundType = <soundtype:wood>;
firewood_ethereal.setCreativeTab(<creativetab:misc>);
firewood_ethereal.register();

var firewood_magic = VanillaFactory.createBlock("firewood_magic", <blockmaterial:wood>);
firewood_magic.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_magic.fullBlock = false;
firewood_magic.lightOpacity = 100;
firewood_magic.blockHardness = 1.5;
firewood_magic.blockResistance = 15.0;
firewood_magic.toolClass = "axe";
firewood_magic.toolLevel = 0;
firewood_magic.blockSoundType = <soundtype:wood>;
firewood_magic.setCreativeTab(<creativetab:misc>);
firewood_magic.register();

var firewood_mangrove = VanillaFactory.createBlock("firewood_mangrove", <blockmaterial:wood>);
firewood_mangrove.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_mangrove.fullBlock = false;
firewood_mangrove.lightOpacity = 100;
firewood_mangrove.blockHardness = 1.5;
firewood_mangrove.blockResistance = 15.0;
firewood_mangrove.toolClass = "axe";
firewood_mangrove.toolLevel = 0;
firewood_mangrove.blockSoundType = <soundtype:wood>;
firewood_mangrove.setCreativeTab(<creativetab:misc>);
firewood_mangrove.register();

var firewood_palm = VanillaFactory.createBlock("firewood_palm", <blockmaterial:wood>);
firewood_palm.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_palm.fullBlock = false;
firewood_palm.lightOpacity = 100;
firewood_palm.blockHardness = 1.5;
firewood_palm.blockResistance = 15.0;
firewood_palm.toolClass = "axe";
firewood_palm.toolLevel = 0;
firewood_palm.blockSoundType = <soundtype:wood>;
firewood_palm.setCreativeTab(<creativetab:misc>);
firewood_palm.register();

var firewood_redwood = VanillaFactory.createBlock("firewood_redwood", <blockmaterial:wood>);
firewood_redwood.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_redwood.fullBlock = false;
firewood_redwood.lightOpacity = 100;
firewood_redwood.blockHardness = 1.5;
firewood_redwood.blockResistance = 15.0;
firewood_redwood.toolClass = "axe";
firewood_redwood.toolLevel = 0;
firewood_redwood.blockSoundType = <soundtype:wood>;
firewood_redwood.setCreativeTab(<creativetab:misc>);
firewood_redwood.register();

var firewood_willow = VanillaFactory.createBlock("firewood_willow", <blockmaterial:wood>);
firewood_willow.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_willow.fullBlock = false;
firewood_willow.lightOpacity = 100;
firewood_willow.blockHardness = 1.5;
firewood_willow.blockResistance = 15.0;
firewood_willow.toolClass = "axe";
firewood_willow.toolLevel = 0;
firewood_willow.blockSoundType = <soundtype:wood>;
firewood_willow.setCreativeTab(<creativetab:misc>);
firewood_willow.register();

var firewood_pine = VanillaFactory.createBlock("firewood_pine", <blockmaterial:wood>);
firewood_pine.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_pine.fullBlock = false;
firewood_pine.lightOpacity = 100;
firewood_pine.blockHardness = 1.5;
firewood_pine.blockResistance = 15.0;
firewood_pine.toolClass = "axe";
firewood_pine.toolLevel = 0;
firewood_pine.blockSoundType = <soundtype:wood>;
firewood_pine.setCreativeTab(<creativetab:misc>);
firewood_pine.register();

var firewood_hellbark = VanillaFactory.createBlock("firewood_hellbark", <blockmaterial:wood>);
firewood_hellbark.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_hellbark.fullBlock = false;
firewood_hellbark.lightOpacity = 100;
firewood_hellbark.blockHardness = 1.5;
firewood_hellbark.blockResistance = 15.0;
firewood_hellbark.toolClass = "axe";
firewood_hellbark.toolLevel = 0;
firewood_hellbark.blockSoundType = <soundtype:wood>;
firewood_hellbark.setCreativeTab(<creativetab:misc>);
firewood_hellbark.register();

var firewood_jacaranda = VanillaFactory.createBlock("firewood_jacaranda", <blockmaterial:wood>);
firewood_jacaranda.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_jacaranda.fullBlock = false;
firewood_jacaranda.lightOpacity = 100;
firewood_jacaranda.blockHardness = 1.5;
firewood_jacaranda.blockResistance = 15.0;
firewood_jacaranda.toolClass = "axe";
firewood_jacaranda.toolLevel = 0;
firewood_jacaranda.blockSoundType = <soundtype:wood>;
firewood_jacaranda.setCreativeTab(<creativetab:misc>);
firewood_jacaranda.register();

var firewood_mahogany = VanillaFactory.createBlock("firewood_mahogany", <blockmaterial:wood>);
firewood_mahogany.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_mahogany.fullBlock = false;
firewood_mahogany.lightOpacity = 100;
firewood_mahogany.blockHardness = 1.5;
firewood_mahogany.blockResistance = 15.0;
firewood_mahogany.toolClass = "axe";
firewood_mahogany.toolLevel = 0;
firewood_mahogany.blockSoundType = <soundtype:wood>;
firewood_mahogany.setCreativeTab(<creativetab:misc>);
firewood_mahogany.register();

var firewood_ebony = VanillaFactory.createBlock("firewood_ebony", <blockmaterial:wood>);
// firewood_ebony.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_ebony.fullBlock = true;
firewood_ebony.lightOpacity = 255;
firewood_ebony.blockHardness = 1.5;
firewood_ebony.blockResistance = 15.0;
firewood_ebony.toolClass = "axe";
firewood_ebony.toolLevel = 0;
firewood_ebony.blockSoundType = <soundtype:wood>;
firewood_ebony.setCreativeTab(<creativetab:misc>);
firewood_ebony.register();

var firewood_eucalyptus = VanillaFactory.createBlock("firewood_eucalyptus", <blockmaterial:wood>);
firewood_eucalyptus.setAxisAlignedBB(AxisAlignedBB.create(0.0d, 0.0d, 0.0d, 1.0d, 0.9d, 1.0d));
firewood_eucalyptus.fullBlock = false;
firewood_eucalyptus.lightOpacity = 100;
firewood_eucalyptus.blockHardness = 1.5;
firewood_eucalyptus.blockResistance = 15.0;
firewood_eucalyptus.toolClass = "axe";
firewood_eucalyptus.toolLevel = 0;
firewood_eucalyptus.blockSoundType = <soundtype:wood>;
firewood_eucalyptus.setCreativeTab(<creativetab:misc>);
firewood_eucalyptus.register();