
#modloaded adchimneys
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val chimneysAndMaterials = {
    <adchimneys:cobblestone>            * 2 : <divergentunderground:rock_stone>             ,
    <adchimneys:cobblestone_andesite>   * 2 : <divergentunderground:rock_andesite>          ,
    <adchimneys:cobblestone_diorite>    * 2 : <divergentunderground:rock_diorite>           ,
    <adchimneys:cobblestone_granite>    * 2 : <divergentunderground:rock_granite>           ,
    <adchimneys:cobblestone_limestone>  * 2 : <divergentunderground:rock_quark_limestone>   ,
    <adchimneys:cobblestone_marble>     * 2 : <divergentunderground:rock_quark_marble>      ,
    <adchimneys:iron_block>             * 6 : <ore:plateIron>                               ,
} as IIngredient[IItemStack];

for chimney, material in chimneysAndMaterials {

    RecipeUtils.tweakRecipe(true, chimney,
       [[material, null, material ],
        [material, null, material ],
        [material, null, material ]]);

}
