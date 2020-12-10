#priority 13
#loader contenttweaker

import crafttweaker.item.IItemStack as IItemStack;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;


// Stone
var rock = VanillaFactory.createBlock("rock", <blockmaterial:rock>);
    rock.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.06d, 0.8d));
    rock.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
    rock.fullBlock = false;
    rock.lightOpacity = 255;
    rock.enumBlockRenderType = "MODEL";
    rock.gravity = true;
    rock.passable = true;
    rock.blockLayer = "TRANSLUCENT";
    rock.replaceable = true;
    rock.translucent = true;
    rock.blockHardness = 0.01;
    rock.blockResistance = 0.5;
    rock.blockSoundType = <soundtype:stone>;
    rock.register();

// Stone 90`
var rock1 = VanillaFactory.createBlock("rock1", <blockmaterial:rock>);
    rock1.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.06d, 0.8d));
    rock1.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
    rock1.fullBlock = false;
    rock1.lightOpacity = 255;
    rock1.enumBlockRenderType = "MODEL";
    rock1.gravity = true;
    rock1.passable = true;
    rock1.blockLayer = "TRANSLUCENT";
    rock1.replaceable = true;
    rock1.translucent = true;
    rock1.blockHardness = 0.01;
    rock1.blockResistance = 0.5;
    rock1.blockSoundType = <soundtype:stone>;
    rock1.register();

// Stone 180`
var rock2 = VanillaFactory.createBlock("rock2", <blockmaterial:rock>);
    rock2.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.06d, 0.8d));
    rock2.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
    rock2.fullBlock = false;
    rock2.lightOpacity = 255;
    rock2.enumBlockRenderType = "MODEL";
    rock2.gravity = true;
    rock2.passable = true;
    rock2.blockLayer = "TRANSLUCENT";
    rock2.replaceable = true;
    rock2.translucent = true;
    rock2.blockHardness = 0.01;
    rock2.blockResistance = 0.5;
    rock2.blockSoundType = <soundtype:stone>;
    rock2.register();

// Stone 270`
var rock3 = VanillaFactory.createBlock("rock3", <blockmaterial:rock>);
    rock3.setAxisAlignedBB(AxisAlignedBB.create(0.2d, 0.0d, 0.2d, 0.8d, 0.06d, 0.8d));
    rock3.setDropHandler(function(drops, world, position, state, fortune) {
        drops.clear();
        drops.add(<item:divergentunderground:rock_stone>);
        return;
});
    rock3.fullBlock = false;
    rock3.lightOpacity = 255;
    rock3.enumBlockRenderType = "MODEL";
    rock3.gravity = true;
    rock3.passable = true;
    rock3.blockLayer = "TRANSLUCENT";
    rock3.replaceable = true;
    rock3.translucent = true;
    rock3.blockHardness = 0.01;
    rock3.blockResistance = 0.5;
    rock3.blockSoundType = <soundtype:stone>;
    rock3.register();