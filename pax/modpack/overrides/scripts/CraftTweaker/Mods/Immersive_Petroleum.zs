
#modloaded immersivepetroleum
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Vanilla.Water.allWater;

// Asphalt
recipes.removeByRecipeName("immersivepetroleum:stone_decoration/asphalt2");
recipes.addShaped(<immersivepetroleum:stone_decoration> * 12,
  [[<ore:itemSlag>, <immersivepetroleum:material>, <ore:itemSlag> ],
   [<ore:gravel>  , allWater                     , <ore:gravel>   ],
   [<ore:itemSlag>, <immersivepetroleum:material>, <ore:itemSlag> ]]);