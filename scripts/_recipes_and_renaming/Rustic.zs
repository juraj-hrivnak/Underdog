import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded rustic

print("--- loading Rustic.zs ---");

// Barley Crushing Tub recipe
mods.rustic.CrushingTub.addRecipe(<liquid:edible_oil> * 10, <harvestcraft:barleyitem> * 2, <biomesoplenty:plant_1:11>);

// Wood
recipes.removeShapeless(<rustic:planks> * 4);
recipes.removeShapeless(<rustic:planks:1> * 4);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=olive]"}) * 8, [<rustic:log>]);
recipes.addShapeless(<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=ironwood]"}) * 8, [<rustic:log:1>]);

print("--- Rustic.zs initialized ---");