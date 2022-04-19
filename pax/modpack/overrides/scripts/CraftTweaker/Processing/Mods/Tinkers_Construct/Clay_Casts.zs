
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.contenttweaker.Commands;
import mods.tconstruct.Casting as Casting;

import scripts.CraftTweaker.Vanilla.Water.allWater;

function getClayCast(type as string) as IItemStack {
    return <tconstruct:clay_cast>.withTag({PartType: type}) as IItemStack;
}

val clayCasts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast_clay>                     ,

    <ore:ingotCopper>                 : <contenttweaker:cast_sand_ingot>            ,

    <tconstruct:broad_axe_head:*>     : getClayCast("tconstruct:broad_axe_head")    ,
    <tconstruct:binding:*>            : getClayCast("tconstruct:binding")           ,
    <tconstruct:bow_limb:*>           : getClayCast("tconstruct:bow_limb")          ,
    <tconstruct:large_sword_blade:*>  : getClayCast("tconstruct:large_sword_blade") ,
    <tconstruct:sign_head:*>          : getClayCast("tconstruct:sign_head")         ,
    <tconstruct:wide_guard:*>         : getClayCast("tconstruct:wide_guard")        ,
    <tconstruct:hand_guard:*>         : getClayCast("tconstruct:hand_guard")        ,
    <tconstruct:excavator_head:*>     : getClayCast("tconstruct:excavator_head")    ,
    <tconstruct:knife_blade:*>        : getClayCast("tconstruct:knife_blade")       ,
    <tconstruct:fletching:*>          : getClayCast("tconstruct:fletching")         ,
    <tconstruct:axe_head:*>           : getClayCast("tconstruct:axe_head")          ,
    <tconstruct:large_plate:*>        : getClayCast("tconstruct:large_plate")       ,
    <tconstruct:scythe_head:*>        : getClayCast("tconstruct:scythe_head")       ,
    <tconstruct:sharpening_kit:*>     : getClayCast("tconstruct:sharpening_kit")    ,
    <tconstruct:kama_head:*>          : getClayCast("tconstruct:kama_head")         ,
    <tconstruct:tool_rod:*>           : getClayCast("tconstruct:tool_rod")          ,
    <tconstruct:shovel_head:*>        : getClayCast("tconstruct:shovel_head")       ,
    <tconstruct:cross_guard:*>        : getClayCast("tconstruct:cross_guard")       ,
    <tconstruct:tough_binding:*>      : getClayCast("tconstruct:tough_binding")     ,
    <tconstruct:arrow_head:*>         : getClayCast("tconstruct:arrow_head")        ,
    <tconstruct:pick_head:*>          : getClayCast("tconstruct:pick_head")         ,
    <tconstruct:tough_tool_rod:*>     : getClayCast("tconstruct:tough_tool_rod")    ,
    <tconstruct:pan_head:*>           : getClayCast("tconstruct:pan_head")          ,
    <tconstruct:hammer_head:*>        : getClayCast("tconstruct:hammer_head")       ,
    <tconstruct:sword_blade:*>        : getClayCast("tconstruct:sword_blade")       ,
    <tconstruct:shard:*>              : getClayCast("tconstruct:shard")             ,

    <tcomplement:chisel_head:*>       : getClayCast("tcomplement:chisel_head")      ,

    <conarm:helmet_core:*>            : getClayCast("conarm:helmet_core")           ,
    <conarm:armor_trim:*>             : getClayCast("conarm:armor_trim")            ,
    <conarm:leggings_core:*>          : getClayCast("conarm:leggings_core")         ,
    <conarm:boots_core:*>             : getClayCast("conarm:boots_core")            ,
    <conarm:armor_plate:*>            : getClayCast("conarm:armor_plate")           ,
    <conarm:chest_core:*>             : getClayCast("conarm:chest_core")            ,
    <conarm:polishing_kit:*>          : getClayCast("conarm:polishing_kit")         ,

};

for part, cast in clayCasts {

    Casting.removeTableRecipe(cast);

    recipes.addShapeless(cast, [<ore:sand>, part.reuse(), allWater, <ore:clayball>], null,
        function(out,cInfo,player) {
            Commands.call("playsound minecraft:item.bucket.empty block @a[r=16] " + player.x + " " + player.y + " " + player.z, player, player.world);
        }
    );

}
