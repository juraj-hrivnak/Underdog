
#modloaded adchimneys
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val chimneysAndMaterials = {
    <adchimneys:cobblestone>                : <divergentunderground:rock_stone>             ,
    <adchimneys:cobblestone_andesite>       : <divergentunderground:rock_andesite>          ,
    <adchimneys:cobblestone_diorite>        : <divergentunderground:rock_diorite>           ,
    <adchimneys:cobblestone_granite>        : <divergentunderground:rock_granite>           ,
    <adchimneys:cobblestone_limestone>      : <divergentunderground:rock_quark_limestone>   ,
    <adchimneys:cobblestone_marble>         : <divergentunderground:rock_quark_marble>      ,
    <adchimneys:iron_block>             * 6 : <ore:plateIron>                               ,
} as IIngredient[IItemStack];

for chimney, material in chimneysAndMaterials {

    RecipeUtils.tweakRecipe(true, chimney,
       [[material, null, material ],
        [material, null, material ],
        [material, null, material ]]);

}
