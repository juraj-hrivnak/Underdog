
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.contenttweaker.Commands;
import mods.tconstruct.Casting as Casting;

import scripts.CraftTweaker.Vanilla.Water.allWater;

function tconClayCastGetter(type as string) as IItemStack {
    return <tconstruct:clay_cast>.withTag({PartType: "tconstruct:" ~ type}) as IItemStack;
}

function conarmClayCastGetter(type as string) as IItemStack {
    return <tconstruct:clay_cast>.withTag({PartType: "conarm:" ~ type}) as IItemStack;
}


val clayCasts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast_clay>                                                     ,

    <tconstruct:broad_axe_head:*>     : tconClayCastGetter("broad_axe_head")     ,
    <tconstruct:binding:*>            : tconClayCastGetter("binding")            ,
    <tconstruct:bow_limb:*>           : tconClayCastGetter("bow_limb")           ,
    <tconstruct:large_sword_blade:*>  : tconClayCastGetter("large_sword_blade")  ,
    <tconstruct:sign_head:*>          : tconClayCastGetter("sign_head")          ,
    <tconstruct:wide_guard:*>         : tconClayCastGetter("wide_guard")         ,
    <tconstruct:hand_guard:*>         : tconClayCastGetter("hand_guard")         ,
    <tconstruct:excavator_head:*>     : tconClayCastGetter("excavator_head")     ,
    <tconstruct:knife_blade:*>        : tconClayCastGetter("knife_blade")        ,
    <tconstruct:fletching:*>          : tconClayCastGetter("fletching")          ,
    <tconstruct:axe_head:*>           : tconClayCastGetter("axe_head")           ,
    <tconstruct:large_plate:*>        : tconClayCastGetter("large_plate")        ,
    <tconstruct:scythe_head:*>        : tconClayCastGetter("scythe_head")        ,
    <tconstruct:sharpening_kit:*>     : tconClayCastGetter("sharpening_kit")     ,
    <tconstruct:kama_head:*>          : tconClayCastGetter("kama_head")          ,
    <tconstruct:tool_rod:*>           : tconClayCastGetter("tool_rod")           ,
    <tconstruct:shovel_head:*>        : tconClayCastGetter("shovel_head")        ,
    <tconstruct:cross_guard:*>        : tconClayCastGetter("cross_guard")        ,
    <tconstruct:tough_binding:*>      : tconClayCastGetter("tough_binding")      ,
    <tconstruct:arrow_head:*>         : tconClayCastGetter("arrow_head")         ,
    <tconstruct:pick_head:*>          : tconClayCastGetter("pick_head")          ,
    <tconstruct:tough_tool_rod:*>     : tconClayCastGetter("tough_tool_rod")     ,
    <tconstruct:pan_head:*>           : tconClayCastGetter("pan_head")           ,
    <tconstruct:hammer_head:*>        : tconClayCastGetter("hammer_head")        ,
    <tconstruct:sword_blade:*>        : tconClayCastGetter("sword_blade")        ,
    <tconstruct:shard:*>              : tconClayCastGetter("shard")              ,

    <tcomplement:chisel_head:*>       : <tconstruct:clay_cast>.withTag({PartType: "tcomplement:chisel_head"})       ,

    <conarm:helmet_core:*>            : conarmClayCastGetter("helmet_core")      ,
    <conarm:armor_trim:*>             : conarmClayCastGetter("armor_trim")       ,
    <conarm:leggings_core:*>          : conarmClayCastGetter("leggings_core")    ,
    <conarm:boots_core:*>             : conarmClayCastGetter("boots_core")       ,
    <conarm:armor_plate:*>            : conarmClayCastGetter("armor_plate")      ,
    <conarm:chest_core:*>             : conarmClayCastGetter("chest_core")       ,
    <conarm:polishing_kit:*>          : conarmClayCastGetter("polishing_kit")    ,

};

for part, cast in clayCasts {

    Casting.removeTableRecipe(cast);

    recipes.addShapeless(cast, [<ore:sand>, part.reuse(), allWater, <ore:clayball>], null,
        function(out,cInfo,player) {
            Commands.call("playsound minecraft:item.bucket.empty block @a[r=20] " + player.x + " " + player.y + " " + player.z, player, player.world);
        }
    );

}
