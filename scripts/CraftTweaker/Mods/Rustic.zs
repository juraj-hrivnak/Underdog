#modloaded rustic
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Barley Crushing Tub recipe
mods.rustic.CrushingTub.addRecipe(<liquid:edible_oil> * 10, <harvestcraft:barleyitem> * 2, <biomesoplenty:plant_1:11>);

<rustic:crushing_tub>.addTooltip("§aUsed for crushing stuff by feet");

recipes.remove(<rustic:evaporating_basin>);
recipes.addShaped(<rustic:evaporating_basin>,
   [[<ore:plateClay>, null, <ore:plateClay>],
    [null, <ore:plateClay>, null]]);


val clayLump = <pyrotech:material:17>;

// Pot
recipes.addShaped(<contenttweaker:unfired_pot>,
   [[clayLump       , <ore:clayball> , clayLump       ],
    [<ore:clayball> , null           , <ore:clayball> ],
    [clayLump       , <ore:clayball> , clayLump       ]]);
recipes.remove(<rustic:vase>);