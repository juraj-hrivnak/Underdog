import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded forestry

print("--- loading Forestry.zs ---");

# Plank panels recipes
recipes.removeShapeless(<forestry:planks.0> * 4, [<forestry:logs.0>]);
recipes.removeShapeless(<forestry:planks.0:1> * 4, [<forestry:logs.0:1>]);
recipes.removeShapeless(<forestry:planks.0:2> * 4, [<forestry:logs.0:2>]);
recipes.removeShapeless(<forestry:planks.0:3> * 4, [<forestry:logs.0:3>]);
recipes.removeShapeless(<forestry:planks.0:4> * 4, [<forestry:logs.1>]);
recipes.removeShapeless(<forestry:planks.0:5> * 4, [<forestry:logs.1:1>]);
recipes.removeShapeless(<forestry:planks.0:6> * 4, [<forestry:logs.1:2>]);
recipes.removeShapeless(<forestry:planks.0:7> * 4, [<forestry:logs.1:3>]);
recipes.removeShapeless(<forestry:planks.0:8> * 4, [<forestry:logs.2>]);
recipes.removeShapeless(<forestry:planks.0:9> * 4, [<forestry:logs.2:1>]);
recipes.removeShapeless(<forestry:planks.0:10> * 4, [<forestry:logs.2:2>]);
recipes.removeShapeless(<forestry:planks.0:11> * 4, [<forestry:logs.2:3>]);
recipes.removeShapeless(<forestry:planks.0:12> * 4, [<forestry:logs.3>]);
recipes.removeShapeless(<forestry:planks.0:13> * 4, [<forestry:logs.3:1>]);
recipes.removeShapeless(<forestry:planks.0:14> * 4, [<forestry:logs.3:2>]);
recipes.removeShapeless(<forestry:planks.0:15> * 4, [<forestry:logs.3:3>]);
recipes.removeShapeless(<forestry:planks.1> * 4, [<forestry:logs.4>]);
recipes.removeShapeless(<forestry:planks.1:1> * 4, [<forestry:logs.4:1>]);
recipes.removeShapeless(<forestry:planks.1:2> * 4, [<forestry:logs.4:2>]);
recipes.removeShapeless(<forestry:planks.1:3> * 4, [<forestry:logs.4:3>]);
recipes.removeShapeless(<forestry:planks.1:4> * 4, [<forestry:logs.5>]);
recipes.removeShapeless(<forestry:planks.1:5> * 4, [<forestry:logs.5:1>]);
recipes.removeShapeless(<forestry:planks.1:6> * 4, [<forestry:logs.5:2>]);
recipes.removeShapeless(<forestry:planks.1:7> * 4, [<forestry:logs.5:3>]);
recipes.removeShapeless(<forestry:planks.1:8> * 4, [<forestry:logs.6>]);
recipes.removeShapeless(<forestry:planks.1:9> * 4, [<forestry:logs.6:1>]);
recipes.removeShapeless(<forestry:planks.1:10> * 4, [<forestry:logs.6:2>]);
recipes.removeShapeless(<forestry:planks.1:11> * 4, [<forestry:logs.6:3>]);
recipes.removeShapeless(<forestry:planks.1:12> * 4, [<forestry:logs.7>]);

recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=larch]"}) * 8, [<forestry:logs.0>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=teak]"}) * 8, [<forestry:logs.0:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=acacia]"}) * 8, [<forestry:logs.0:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=lime]"}) * 8, [<forestry:logs.0:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=chestnut]"}) * 8, [<forestry:logs.1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=wenge]"}) * 8, [<forestry:logs.1:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=baobab]"}) * 8, [<forestry:logs.1:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=sequoia]"}) * 8, [<forestry:logs.1:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=kapok]"}) * 8, [<forestry:logs.2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=ebony]"}) * 8, [<forestry:logs.2:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=mahogany]"}) * 8, [<forestry:logs.2:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=balsa]"}) * 8, [<forestry:logs.2:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=willow]"}) * 8, [<forestry:logs.3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=walnut]"}) * 8, [<forestry:logs.3:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=greenheart]"}) * 8, [<forestry:logs.3:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=cherry]"}) * 8, [<forestry:logs.3:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=mahoe]"}) * 8, [<forestry:logs.4>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=poplar]"}) * 8, [<forestry:logs.4:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=palm]"}) * 8, [<forestry:logs.4:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=papaya]"}) * 8, [<forestry:logs.4:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=pine]"}) * 8, [<forestry:logs.5>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=plum]"}) * 8, [<forestry:logs.5:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=maple]"}) * 8, [<forestry:logs.5:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=citrus]"}) * 8, [<forestry:logs.5:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=giganteum]"}) * 8, [<forestry:logs.6>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=ipe]"}) * 8, [<forestry:logs.6:1>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=padauk]"}) * 8, [<forestry:logs.6:2>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=cocobolo]"}) * 8, [<forestry:logs.6:3>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=zebrawood]"}) * 8, [<forestry:logs.7>]);

print("--- Forestry.zs initialized ---");