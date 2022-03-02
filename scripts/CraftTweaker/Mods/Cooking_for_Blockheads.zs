
#modloaded cookingforblockheads
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

recipes.remove(<cookingforblockheads:tool_rack>);
recipes.addShaped(<cookingforblockheads:tool_rack>,
   [[<ore:lumber>    , <ore:lumber> , <ore:lumber>     ],
    [<ore:nuggetIron>, null         , <ore:nuggetIron> ]]);

recipes.remove(<cookingforblockheads:cooking_table>);
recipes.addShaped(<cookingforblockheads:cooking_table>,
   [[<ore:rocks>     , <ore:rocks>                         , <ore:rocks>      ],
    [<ore:ingotBrick>, <cookingforblockheads:recipe_book:2>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                    , <ore:ingotBrick> ]]);

recipes.remove(<cookingforblockheads:counter>);
recipes.addShaped(<cookingforblockheads:counter>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

recipes.remove(<cookingforblockheads:cabinet>);
recipes.addShaped(<cookingforblockheads:cabinet>,
   [[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:chestWood> , <ore:ingotBrick> ]]);

recipes.remove(<cookingforblockheads:corner>);
recipes.addShaped(<cookingforblockheads:corner>,
   [[<ore:rocks>     , <ore:rocks>     , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>,
   [[<ore:rocks>     , null                                 , <ore:rocks>      ],
    [<ore:ingotBrick>, <ore:plateIron> | <ore:plateAluminum>, <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>                     , <ore:ingotBrick> ]]);
