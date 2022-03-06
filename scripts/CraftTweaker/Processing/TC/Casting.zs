
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.tconstruct.Casting as Casting;

function tconCastGetter(type as string) as IItemStack {
    return <tconstruct:cast>.withTag({PartType: "tconstruct:" ~ type}) as IItemStack;
}

function conarmCastGetter(type as string) as IItemStack {
    return <tconstruct:cast>.withTag({PartType: "conarm:" ~ type}) as IItemStack;
}

// IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time

val casts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast>                                                     ,

    null                              : <tconstruct:cast>                                                      ,
    <tconstruct:broad_axe_head:*>     : tconCastGetter("broad_axe_head")     ,
    <tconstruct:binding:*>            : tconCastGetter("binding")            ,
    <tconstruct:bow_limb:*>           : tconCastGetter("bow_limb")           ,
    <tconstruct:large_sword_blade:*>  : tconCastGetter("large_sword_blade")  ,
    <tconstruct:sign_head:*>          : tconCastGetter("sign_head")          ,
    <tconstruct:wide_guard:*>         : tconCastGetter("wide_guard")         ,
    <tconstruct:hand_guard:*>         : tconCastGetter("hand_guard")         ,
    <tconstruct:excavator_head:*>     : tconCastGetter("excavator_head")     ,
    <tconstruct:knife_blade:*>        : tconCastGetter("knife_blade")        ,
    <tconstruct:fletching:*>          : tconCastGetter("fletching")          ,
    <tconstruct:axe_head:*>           : tconCastGetter("axe_head")           ,
    <tconstruct:large_plate:*>        : tconCastGetter("large_plate")        ,
    <tconstruct:scythe_head:*>        : tconCastGetter("scythe_head")        ,
    <tconstruct:sharpening_kit:*>     : tconCastGetter("sharpening_kit")     ,
    <tconstruct:kama_head:*>          : tconCastGetter("kama_head")          ,
    <tconstruct:tool_rod:*>           : tconCastGetter("tool_rod")           ,
    <tconstruct:shovel_head:*>        : tconCastGetter("shovel_head")        ,
    <tconstruct:cross_guard:*>        : tconCastGetter("cross_guard")        ,
    <tconstruct:tough_binding:*>      : tconCastGetter("tough_binding")      ,
    <tconstruct:arrow_head:*>         : tconCastGetter("arrow_head")         ,
    <tconstruct:pick_head:*>          : tconCastGetter("pick_head")          ,
    <tconstruct:tough_tool_rod:*>     : tconCastGetter("tough_tool_rod")     ,
    <tconstruct:pan_head:*>           : tconCastGetter("pan_head")           ,
    <tconstruct:hammer_head:*>        : tconCastGetter("hammer_head")        ,
    <tconstruct:sword_blade:*>        : tconCastGetter("sword_blade")        ,
    <tconstruct:shard:*>              : tconCastGetter("shard")              ,

    <tcomplement:chisel_head:*>       : <tconstruct:cast>.withTag({PartType: "tcomplement:chisel_head"})       ,

    <conarm:helmet_core:*>            : conarmCastGetter("helmet_core")      ,
    <conarm:armor_trim:*>             : conarmCastGetter("armor_trim")       ,
    <conarm:leggings_core:*>          : conarmCastGetter("leggings_core")    ,
    <conarm:boots_core:*>             : conarmCastGetter("boots_core")       ,
    <conarm:armor_plate:*>            : conarmCastGetter("armor_plate")      ,
    <conarm:chest_core:*>             : conarmCastGetter("chest_core")       ,
    <conarm:polishing_kit:*>          : conarmCastGetter("polishing_kit")    ,

    <ore:ingotIron>                   : <tconstruct:cast_custom>             ,
    <ore:nuggetIron>                  : <tconstruct:cast_custom:1>           ,
    <ore:gemEmerald>                  : <tconstruct:cast_custom:2>           ,
    <ore:plateIron>                   : <tconstruct:cast_custom:3>           ,
    <ore:gearIron>                    : <tconstruct:cast_custom:4>           ,

    <contenttweaker:nail_iron>        : <contenttweaker:cast_nail>           ,

};

for input, output in casts {

    Casting.removeTableRecipe(output);
    Casting.addTableRecipe(output, input, <liquid:steel>, 288, false, 60);

}

// Iron Nail
Casting.addTableRecipe(<contenttweaker:nail_iron>, <contenttweaker:cast_nail>, <liquid:iron>, 18, false, 20);
