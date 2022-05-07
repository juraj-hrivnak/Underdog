
#modloaded cookingforblockheads
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Tool Rack
RecipeUtils.tweakRecipe(true, <cookingforblockheads:tool_rack>,
   [[<ore:lumber>    , <ore:lumber>, <ore:lumber>     ],
    [<ore:nuggetIron>, null        , <ore:nuggetIron> ]]);

// Spice Rack
RecipeUtils.tweakRecipe(true, <cookingforblockheads:spice_rack>,
   [[<ore:lumber>, <ore:slabWood>, <ore:lumber> ]]);

// Cooking Table
RecipeUtils.tweakRecipe(true, <cookingforblockheads:cooking_table>,
   [[<ore:rocks>     , <ore:rocks>                         , <ore:rocks>      ],
    [<ore:ingotBrick>, <cookingforblockheads:recipe_book:2>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                    , <ore:ingotBrick> ]]);

// Counter
RecipeUtils.tweakRecipe(true, <cookingforblockheads:counter>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

// Cabinet
RecipeUtils.tweakRecipe(true, <cookingforblockheads:cabinet>,
   [[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ]]);

// Corner
RecipeUtils.tweakRecipe(true, <cookingforblockheads:corner>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

// Sink
RecipeUtils.tweakRecipe(true, <cookingforblockheads:sink>,
   [[<ore:rocks>     , null                                 , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:plateIron> | <ore:plateAluminum>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                     , <ore:ingotBrick> ]]);

// Oven
RecipeUtils.tweakRecipe(true, <cookingforblockheads:oven>,
   [[<ore:paneGlassBlack>, <ore:paneGlassBlack>, <ore:paneGlassBlack> ],
    [<ore:plateIron>     , null                , <ore:plateIron>      ],
    [<ore:plateIron>     , <ore:plateIron>     , <ore:plateIron>      ]]);
