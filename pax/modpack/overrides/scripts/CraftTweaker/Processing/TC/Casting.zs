
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.tconstruct.Casting as Casting;


// IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time

val casts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast>                                                     ,

    null                              : <tconstruct:cast>                                                      ,
    <tconstruct:broad_axe_head:*>     : <tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"})     ,
    <tconstruct:binding:*>            : <tconstruct:cast>.withTag({PartType: "tconstruct:binding"})            ,
    <tconstruct:bow_limb:*>           : <tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"})           ,
    <tconstruct:large_sword_blade:*>  : <tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"})  ,
    <tconstruct:sign_head:*>          : <tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"})          ,
    <tconstruct:wide_guard:*>         : <tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"})         ,
    <tconstruct:hand_guard:*>         : <tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"})         ,
    <tconstruct:excavator_head:*>     : <tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"})     ,
    <tconstruct:knife_blade:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"})        ,
    <tconstruct:fletching:*>          : <tconstruct:cast>.withTag({PartType: "tconstruct:fletching"})          ,
    <tconstruct:axe_head:*>           : <tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"})           ,
    <tconstruct:large_plate:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"})        ,
    <tconstruct:scythe_head:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"})        ,
    <tconstruct:sharpening_kit:*>     : <tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"})     ,
    <tconstruct:kama_head:*>          : <tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"})          ,
    <tconstruct:tool_rod:*>           : <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"})           ,
    <tconstruct:shovel_head:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"})        ,
    <tconstruct:cross_guard:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"})        ,
    <tconstruct:tough_binding:*>      : <tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"})      ,
    <tconstruct:arrow_head:*>         : <tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"})         ,
    <tconstruct:pick_head:*>          : <tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"})          ,
    <tconstruct:tough_tool_rod:*>     : <tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"})     ,
    <tconstruct:pan_head:*>           : <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"})           ,
    <tconstruct:hammer_head:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"})        ,
    <tconstruct:sword_blade:*>        : <tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"})        ,
    <tconstruct:shard:*>              : <tconstruct:cast>.withTag({PartType: "tconstruct:shard"})              ,

    <tcomplement:chisel_head:*>       : <tconstruct:cast>.withTag({PartType: "tcomplement:chisel_head"})       ,

    <conarm:helmet_core:*>            : <tconstruct:cast>.withTag({PartType: "conarm:helmet_core"})            ,
    <conarm:armor_trim:*>             : <tconstruct:cast>.withTag({PartType: "conarm:armor_trim"})             ,
    <conarm:leggings_core:*>          : <tconstruct:cast>.withTag({PartType: "conarm:leggings_core"})          ,
    <conarm:boots_core:*>             : <tconstruct:cast>.withTag({PartType: "conarm:boots_core"})             ,
    <conarm:armor_plate:*>            : <tconstruct:cast>.withTag({PartType: "conarm:armor_plate"})            ,
    <conarm:chest_core:*>             : <tconstruct:cast>.withTag({PartType: "conarm:chest_core"})             ,
    <conarm:polishing_kit:*>          : <tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"})          ,

    <ore:ingotIron>                   : <tconstruct:cast_custom>                                               ,
    <ore:nuggetIron>                  : <tconstruct:cast_custom:1>                                             ,
    <ore:gemEmerald>                  : <tconstruct:cast_custom:2>                                             ,
    <ore:plateIron>                   : <tconstruct:cast_custom:3>                                             ,
    <ore:gearIron>                    : <tconstruct:cast_custom:4>                                             ,

    <contenttweaker:nail_iron>        : <contenttweaker:cast_nail>                                             ,

};

for input, output in casts {

    Casting.removeTableRecipe(output);
    Casting.addTableRecipe(output, input, <liquid:steel>, 288, false, 60);

}

// Iron Nail
Casting.addTableRecipe(<contenttweaker:nail_iron>, <contenttweaker:cast_nail>, <liquid:iron>, 18, false, 20);