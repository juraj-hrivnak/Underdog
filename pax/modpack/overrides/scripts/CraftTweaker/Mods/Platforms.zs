
#modloaded platforms
import crafttweaker.item.IItemStack as IItemStack;


// Platformer
recipes.remove(<platforms:platform:50>);
recipes.addShapeless(<platforms:platform:50>, [<contenttweaker:table_top>, <ore:dyeRed>, <ore:lumber>, <ore:lumber>]);

// Monkey Wrench
recipes.remove(<platforms:wrench>);
recipes.addShapedMirrored(<platforms:wrench>,
  [[null           , <ore:ingotIron>   , <ore:ingotIron>   ],
   [null           , <ore:stickIron>   , null              ],
   [<ore:stickIron>, <ore:dyeRed>      , null              ]]);