
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.mekanism.enrichment as MKEnrichment;

val dissolutions as IItemStack[IIngredient] = {

//  IIngredient input,                    IItemStack output
    <ore:oreIron>                       : <immersiveengineering:metal:18> * 2,
    <ore:oreGold>                       : <immersiveengineering:metal:19> * 2,

    <ore:oreCopper>                     : <immersiveengineering:metal:9>  * 2,
    <ore:oreTin>                        : <mekanism:dust:4>               * 2,
    <ore:oreSilver>                     : <immersiveengineering:metal:12> * 2,
    <ore:oreLead>                       : <immersiveengineering:metal:11> * 2,
    <ore:oreAluminum>                   : <immersiveengineering:metal:10> * 2,
    <ore:oreNickel>                     : <immersiveengineering:metal:13> * 2,
    <ore:oreUranium>                    : <immersiveengineering:metal:14> * 2,
    <ore:oreOsmium>                     : <mekanism:dust:2>               * 2,

    <ore:orePyrite>                     : <minecraft:blaze_powder>        * 2,

    <mekanism:plasticblock:15>          : <mekanism:slickplasticblock:15>    ,
    <mekanism:plasticblock:14>          : <mekanism:slickplasticblock:14>    ,
    <mekanism:plasticblock:13>          : <mekanism:slickplasticblock:13>    ,
    <mekanism:plasticblock:12>          : <mekanism:slickplasticblock:12>    ,
    <mekanism:plasticblock:11>          : <mekanism:slickplasticblock:11>    ,
    <mekanism:plasticblock:10>          : <mekanism:slickplasticblock:10>    ,
    <mekanism:plasticblock:9>           : <mekanism:slickplasticblock:9>     ,
    <mekanism:plasticblock:8>           : <mekanism:slickplasticblock:8>     ,
    <mekanism:plasticblock:7>           : <mekanism:slickplasticblock:7>     ,
    <mekanism:plasticblock:6>           : <mekanism:slickplasticblock:6>     ,
    <mekanism:plasticblock:5>           : <mekanism:slickplasticblock:5>     ,
    <mekanism:plasticblock:4>           : <mekanism:slickplasticblock:4>     ,
    <mekanism:plasticblock:3>           : <mekanism:slickplasticblock:3>     ,
    <mekanism:plasticblock:2>           : <mekanism:slickplasticblock:2>     ,
    <mekanism:plasticblock:1>           : <mekanism:slickplasticblock:1>     ,
    <mekanism:plasticblock>             : <mekanism:slickplasticblock>       ,

    <mekanism:otherdust:3>              : <minecraft:gunpowder>              ,
    <mekanism:otherdust>                : <minecraft:diamond>                ,
    <mekanism:otherdust:5>              : <mekanism:compressedobsidian>      ,
    <minecraft:stonebrick:2>            : <minecraft:stonebrick>             ,
    <minecraft:stonebrick>              : <minecraft:stonebrick:3>           ,
    <minecraft:stonebrick:1>            : <minecraft:stonebrick>             ,
    <mekanism:saltblock>                : <mekanism:salt>                 * 4,
    <minecraft:redstone>                : <mekanism:compressedredstone>      ,
    <minecraft:glowstone>               : <minecraft:glowstone_dust>      * 4,
    <minecraft:stone>                   : <minecraft:stonebrick:2>           ,
    <minecraft:gravel>                  : <minecraft:cobblestone>            ,
    <pyrotech:rock:7>               * 8 : <minecraft:coal:1>                 ,
    <mekanism:polyethene>           * 3 : <mekanism:polyethene:2>            ,
    <minecraft:diamond>                 : <mekanism:compresseddiamond>       ,
    <minecraft:obsidian>                : <mekanism:otherdust:6>          * 4,
    <minecraft:clay>                    : <minecraft:clay_ball>           * 4,
    <minecraft:coal:1>                  : <mekanism:compressedcarbon>        ,
    <minecraft:coal>                    : <mekanism:compressedcarbon>        ,
    <minecraft:gunpowder>               : <minecraft:flint>                  ,
    <immersiveengineering:material:24>  : <minecraft:gunpowder>              ,
    <immersiveengineering:material:25>  : <minecraft:gunpowder>              ,
    <minecraft:mossy_cobblestone>       : <minecraft:cobblestone>            ,
    <minecraft:sand>                    : <minecraft:gravel>                 ,

    <ore:dustDirtyIron>                 : <immersiveengineering:metal:18>    ,
    <ore:dustDirtyGold>                 : <immersiveengineering:metal:19>    ,
    <ore:dustDirtyOsmium>               : <mekanism:dust:2>                  ,
    <ore:dustDirtyTin>                  : <mekanism:dust:4>                  ,
    <ore:dustDirtySilver>               : <immersiveengineering:metal:12>    ,
    <ore:dustDirtyLead>                 : <immersiveengineering:metal:11>    ,
    <ore:dustDirtyCopper>               : <immersiveengineering:metal:9>

};

for input, output in dissolutions {

    MKEnrichment.addRecipe(input, output);

}