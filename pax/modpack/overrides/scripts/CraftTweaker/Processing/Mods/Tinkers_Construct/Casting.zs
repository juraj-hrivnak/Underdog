
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.tconstruct.Casting as Casting;

function getCast(type as string) as IItemStack {
    return <tconstruct:cast>.withTag({PartType: type}) as IItemStack;
}

val casts as IItemStack[IIngredient] = {

    <pyrotech:bucket_stone> |
        <tcomplement:materials>       : <tcomplement:cast>                      ,

    null                              : <tconstruct:cast>                       ,

    <tconstruct:broad_axe_head:*>     : getCast("tconstruct:broad_axe_head")    ,
    <tconstruct:binding:*>            : getCast("tconstruct:binding")           ,
    <tconstruct:bow_limb:*>           : getCast("tconstruct:bow_limb")          ,
    <tconstruct:large_sword_blade:*>  : getCast("tconstruct:large_sword_blade") ,
    <tconstruct:sign_head:*>          : getCast("tconstruct:sign_head")         ,
    <tconstruct:wide_guard:*>         : getCast("tconstruct:wide_guard")        ,
    <tconstruct:hand_guard:*>         : getCast("tconstruct:hand_guard")        ,
    <tconstruct:excavator_head:*>     : getCast("tconstruct:excavator_head")    ,
    <tconstruct:knife_blade:*>        : getCast("tconstruct:knife_blade")       ,
    <tconstruct:fletching:*>          : getCast("tconstruct:fletching")         ,
    <tconstruct:axe_head:*>           : getCast("tconstruct:axe_head")          ,
    <tconstruct:large_plate:*>        : getCast("tconstruct:large_plate")       ,
    <tconstruct:scythe_head:*>        : getCast("tconstruct:scythe_head")       ,
    <tconstruct:sharpening_kit:*>     : getCast("tconstruct:sharpening_kit")    ,
    <tconstruct:kama_head:*>          : getCast("tconstruct:kama_head")         ,
    <tconstruct:tool_rod:*>           : getCast("tconstruct:tool_rod")          ,
    <tconstruct:shovel_head:*>        : getCast("tconstruct:shovel_head")       ,
    <tconstruct:cross_guard:*>        : getCast("tconstruct:cross_guard")       ,
    <tconstruct:tough_binding:*>      : getCast("tconstruct:tough_binding")     ,
    <tconstruct:arrow_head:*>         : getCast("tconstruct:arrow_head")        ,
    <tconstruct:pick_head:*>          : getCast("tconstruct:pick_head")         ,
    <tconstruct:tough_tool_rod:*>     : getCast("tconstruct:tough_tool_rod")    ,
    <tconstruct:pan_head:*>           : getCast("tconstruct:pan_head")          ,
    <tconstruct:hammer_head:*>        : getCast("tconstruct:hammer_head")       ,
    <tconstruct:sword_blade:*>        : getCast("tconstruct:sword_blade")       ,
    <tconstruct:shard:*>              : getCast("tconstruct:shard")             ,

    <tcomplement:chisel_head:*>       : getCast("tcomplement:chisel_head")      ,

    <conarm:helmet_core:*>            : getCast("conarm:helmet_core")           ,
    <conarm:armor_trim:*>             : getCast("conarm:armor_trim")            ,
    <conarm:leggings_core:*>          : getCast("conarm:leggings_core")         ,
    <conarm:boots_core:*>             : getCast("conarm:boots_core")            ,
    <conarm:armor_plate:*>            : getCast("conarm:armor_plate")           ,
    <conarm:chest_core:*>             : getCast("conarm:chest_core")            ,
    <conarm:polishing_kit:*>          : getCast("conarm:polishing_kit")         ,

    <ore:ingotCopper>                 : <tconstruct:cast_custom>                ,
    <ore:nuggetCopper>                : <tconstruct:cast_custom:1>              ,
    <ore:gemEmerald>                  : <tconstruct:cast_custom:2>              ,
    <ore:plateCopper>                 : <tconstruct:cast_custom:3>              ,
    <ore:gearCopper>                  : <tconstruct:cast_custom:4>              ,

    <contenttweaker:nail_iron>        : <contenttweaker:cast_nail>              ,

};

for input, output in casts {

    Casting.removeTableRecipe(output);
    Casting.addTableRecipe(output, input, <liquid:steel>, 288, false, 60);

}

// Iron Nail
Casting.addTableRecipe(<contenttweaker:nail_iron>, <contenttweaker:cast_nail>, <liquid:iron>, 18, false, 20);

// Ingot Sand Casting
val casting as ILiquidStack[IItemStack] = {
    <minecraft:iron_ingot>          : <liquid:iron>         ,
    <minecraft:gold_ingot>          : <liquid:gold>         ,
    <geolosys:ingot>                : <liquid:copper>       ,
    <geolosys:ingot:1>              : <liquid:tin>          ,
    <geolosys:ingot:2>              : <liquid:silver>       ,
    <geolosys:ingot:3>              : <liquid:lead>         ,
    <geolosys:ingot:4>              : <liquid:aluminum>     ,
    <geolosys:ingot:5>              : <liquid:nickel>       ,
    <geolosys:ingot:7>              : <liquid:zinc>         ,
    <immersiveengineering:metal:5>  : <liquid:uranium>      ,
    <mekanism:ingot:1>              : <liquid:osmium>       ,
    <tconstruct:ingots>             : <liquid:cobalt>       ,
    <tconstruct:ingots:1>           : <liquid:ardite>       ,
    <immersiveengineering:metal:6>  : <liquid:constantan>   ,
    <immersiveengineering:metal:7>  : <liquid:electrum>     ,
    <immersiveengineering:metal:8>  : <liquid:steel>        ,
    <mekanism:ingot:2>              : <liquid:bronze>       ,
};

for ingot, liquid in casting {
    Casting.addTableRecipe(ingot, <contenttweaker:cast_sand_ingot>, liquid, 144, true, 20);
}