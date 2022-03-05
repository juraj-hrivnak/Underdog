
#modloaded cookingforblockheads
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

// Tool Rack
recipes.remove(<cookingforblockheads:tool_rack>);
recipes.addShaped(<cookingforblockheads:tool_rack>,
   [[<ore:lumber>    , <ore:lumber> , <ore:lumber>     ],
    [<ore:nuggetIron>, null         , <ore:nuggetIron> ]]);

// Cooking Table
recipes.remove(<cookingforblockheads:cooking_table>);
recipes.addShaped(<cookingforblockheads:cooking_table>,
   [[<ore:rocks>     , <ore:rocks>                         , <ore:rocks>      ],
    [<ore:ingotBrick>, <cookingforblockheads:recipe_book:2>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                    , <ore:ingotBrick> ]]);

// Counter
recipes.remove(<cookingforblockheads:counter>);
recipes.addShaped(<cookingforblockheads:counter>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

// Cabinet
recipes.remove(<cookingforblockheads:cabinet>);
recipes.addShaped(<cookingforblockheads:cabinet>,
   [[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ]]);

// Corner
recipes.remove(<cookingforblockheads:corner>);
recipes.addShaped(<cookingforblockheads:corner>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

// Sink
recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>,
   [[<ore:rocks>     , null                                 , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:plateIron> | <ore:plateAluminum>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                     , <ore:ingotBrick> ]]);

// Oven
recipes.remove(<cookingforblockheads:oven>);
recipes.addShaped(<cookingforblockheads:oven>,
   [[<ore:paneGlassBlack>, <ore:paneGlassBlack>, <ore:paneGlassBlack> ],
    [<ore:plateIron>     , null                , <ore:plateIron>      ],
    [<ore:plateIron>     , <ore:plateIron>     , <ore:plateIron>      ]]);
