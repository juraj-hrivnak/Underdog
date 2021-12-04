#modloaded cookingforblockheads
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

recipes.remove(<cookingforblockheads:tool_rack>);
recipes.addShaped(<cookingforblockheads:tool_rack>, 
   [[<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:nuggetIron>, null, <ore:nuggetIron>]]);

recipes.remove(<cookingforblockheads:cooking_table>);
recipes.addShaped(<cookingforblockheads:cooking_table>, 
   [[<ore:rocks>, <ore:rocks>, <ore:rocks>],
    [<ore:plateClay>, <cookingforblockheads:recipe_book:2>, <ore:plateClay>],
    [<ore:plateClay>, <ore:plateClay>, <ore:plateClay>]]);

recipes.remove(<cookingforblockheads:counter>);
recipes.addShaped(<cookingforblockheads:counter>, 
   [[<ore:rocks>, <ore:rocks>, <ore:rocks>],
    [<ore:plateClay>, <ore:chestWood>, <ore:plateClay>],
    [<ore:plateClay>, <ore:plateClay>, <ore:plateClay>]]);

recipes.remove(<cookingforblockheads:cabinet>);
recipes.addShaped(<cookingforblockheads:cabinet>, 
   [[<ore:plateClay>, <ore:plateClay>, <ore:plateClay>],
    [<ore:plateClay>, <ore:chestWood>, <ore:plateClay>]]);

recipes.remove(<cookingforblockheads:corner>);
recipes.addShaped(<cookingforblockheads:corner>, 
   [[<ore:rocks>, <ore:rocks>, <ore:rocks>],
    [<ore:plateClay>, <ore:plateClay>, <ore:plateClay>],
    [<ore:plateClay>, <ore:plateClay>, <ore:plateClay>]]);

recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>, 
   [[<ore:rocks>, null, <ore:rocks>],
    [<ore:plateClay>, <ore:plateIron> | <ore:plateAluminum>, <ore:plateClay>],
    [<ore:plateClay>, <ore:plateClay>, <ore:plateClay>]]);

