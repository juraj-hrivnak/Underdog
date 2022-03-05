
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.contenttweaker.Commands;
import mods.tconstruct.Casting as Casting;


import scripts.CraftTweaker.Vanilla.Water.allWater;

val clayCasts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast_clay>                                                     ,

    <tconstruct:broad_axe_head:*>     : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:broad_axe_head"})     ,
    <tconstruct:binding:*>            : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"})            ,
    <tconstruct:bow_limb:*>           : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"})           ,
    <tconstruct:large_sword_blade:*>  : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_sword_blade"})  ,
    <tconstruct:sign_head:*>          : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"})          ,
    <tconstruct:wide_guard:*>         : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"})         ,
    <tconstruct:hand_guard:*>         : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"})         ,
    <tconstruct:excavator_head:*>     : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:excavator_head"})     ,
    <tconstruct:knife_blade:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"})        ,
    <tconstruct:fletching:*>          : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:fletching"})          ,
    <tconstruct:axe_head:*>           : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"})           ,
    <tconstruct:large_plate:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_plate"})        ,
    <tconstruct:scythe_head:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:scythe_head"})        ,
    <tconstruct:sharpening_kit:*>     : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"})     ,
    <tconstruct:kama_head:*>          : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:kama_head"})          ,
    <tconstruct:tool_rod:*>           : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"})           ,
    <tconstruct:shovel_head:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"})        ,
    <tconstruct:cross_guard:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"})        ,
    <tconstruct:tough_binding:*>      : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_binding"})      ,
    <tconstruct:arrow_head:*>         : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_head"})         ,
    <tconstruct:pick_head:*>          : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"})          ,
    <tconstruct:tough_tool_rod:*>     : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_tool_rod"})     ,
    <tconstruct:pan_head:*>           : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"})           ,
    <tconstruct:hammer_head:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"})        ,
    <tconstruct:sword_blade:*>        : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"})        ,
    <tconstruct:shard:*>              : <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shard"})              ,

    <tcomplement:chisel_head:*>       : <tconstruct:clay_cast>.withTag({PartType: "tcomplement:chisel_head"})       ,

    <conarm:helmet_core:*>            : <tconstruct:clay_cast>.withTag({PartType: "conarm:helmet_core"})            ,
    <conarm:armor_trim:*>             : <tconstruct:clay_cast>.withTag({PartType: "conarm:armor_trim"})             ,
    <conarm:leggings_core:*>          : <tconstruct:clay_cast>.withTag({PartType: "conarm:leggings_core"})          ,
    <conarm:boots_core:*>             : <tconstruct:clay_cast>.withTag({PartType: "conarm:boots_core"})             ,
    <conarm:armor_plate:*>            : <tconstruct:clay_cast>.withTag({PartType: "conarm:armor_plate"})            ,
    <conarm:chest_core:*>             : <tconstruct:clay_cast>.withTag({PartType: "conarm:chest_core"})             ,
    <conarm:polishing_kit:*>          : <tconstruct:clay_cast>.withTag({PartType: "conarm:polishing_kit"})          ,

};

for part, cast in clayCasts {

    Casting.removeTableRecipe(cast);

    recipes.addShapeless(cast, [<ore:sand>, part.reuse(), allWater, <ore:clayball>], null,
        function(out,cInfo,player) {
            Commands.call("playsound minecraft:item.bucket.empty block @a[r=20] " + player.x + " " + player.y + " " + player.z, player, player.world);
        }
    );

}
