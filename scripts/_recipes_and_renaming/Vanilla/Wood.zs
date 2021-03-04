import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

recipes.removeShaped(<minecraft:planks> * 4);
recipes.removeShaped(<minecraft:planks:1> * 4);
recipes.removeShaped(<minecraft:planks:2> * 4);
recipes.removeShaped(<minecraft:planks:3> * 4);
recipes.removeShaped(<minecraft:planks:4> * 4);
recipes.removeShaped(<minecraft:planks:5> * 4);

recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=oak]"}) * 8, [<minecraft:log>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=spruce]"}) * 8, [<minecraft:log:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=birch]"}) * 8, [<minecraft:log:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=jungle]"}) * 8, [<minecraft:log:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=acacia]"}) * 8, [<minecraft:log2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=dark_oak]"}) * 8, [<minecraft:log2:1>]);