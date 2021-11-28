
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
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

    <mekanism:plasticblock:15>          : <mekanism:slickplasticblock:15> * 1,
    <mekanism:plasticblock:14>          : <mekanism:slickplasticblock:14> * 1,
    <mekanism:plasticblock:13>          : <mekanism:slickplasticblock:13> * 1,
    <mekanism:plasticblock:12>          : <mekanism:slickplasticblock:12> * 1,
    <mekanism:plasticblock:11>          : <mekanism:slickplasticblock:11> * 1,
    <mekanism:plasticblock:10>          : <mekanism:slickplasticblock:10> * 1,
    <mekanism:plasticblock:9>           : <mekanism:slickplasticblock:9>  * 1,
    <mekanism:plasticblock:8>           : <mekanism:slickplasticblock:8>  * 1,
    <mekanism:plasticblock:7>           : <mekanism:slickplasticblock:7>  * 1,
    <mekanism:plasticblock:6>           : <mekanism:slickplasticblock:6>  * 1,
    <mekanism:plasticblock:5>           : <mekanism:slickplasticblock:5>  * 1,
    <mekanism:plasticblock:4>           : <mekanism:slickplasticblock:4>  * 1,
    <mekanism:plasticblock:3>           : <mekanism:slickplasticblock:3>  * 1,
    <mekanism:plasticblock:2>           : <mekanism:slickplasticblock:2>  * 1,
    <mekanism:plasticblock:1>           : <mekanism:slickplasticblock:1>  * 1,
    <mekanism:plasticblock>             : <mekanism:slickplasticblock>    * 1,

    <mekanism:otherdust:3>              : <minecraft:gunpowder>           * 1,
    <mekanism:otherdust>                : <minecraft:diamond>             * 1,
    <mekanism:otherdust:5>              : <mekanism:compressedobsidian>   * 1,
    <minecraft:stonebrick:2>            : <minecraft:stonebrick>          * 1,
    <minecraft:stonebrick>              : <minecraft:stonebrick:3>        * 1,
    <minecraft:stonebrick:1>            : <minecraft:stonebrick>          * 1,
    <mekanism:saltblock>                : <mekanism:salt> * 4             * 1,
    <minecraft:redstone>                : <mekanism:compressedredstone>   * 1,
    <minecraft:glowstone>               : <minecraft:glowstone_dust> * 4  * 1,
    <minecraft:stone>                   : <minecraft:stonebrick:2>        * 1,
    <minecraft:gravel>                  : <minecraft:cobblestone>         * 1,
    <pyrotech:rock:7> * 8               : <minecraft:coal:1>              * 1,
    <mekanism:polyethene> * 3           : <mekanism:polyethene:2>         * 1,
    <minecraft:diamond>                 : <mekanism:compresseddiamond>    * 1,
    <minecraft:obsidian>                : <mekanism:otherdust:6> * 4      * 1,
    <minecraft:clay>                    : <minecraft:clay_ball> * 4       * 1,
    <minecraft:coal:1>                  : <mekanism:compressedcarbon>     * 1,
    <minecraft:coal>                    : <mekanism:compressedcarbon>     * 1,
    <minecraft:gunpowder>               : <minecraft:flint>               * 1,
    <immersiveengineering:material:24>  : <minecraft:gunpowder>           * 1,
    <immersiveengineering:material:25>  : <minecraft:gunpowder>           * 1,
    <minecraft:mossy_cobblestone>       : <minecraft:cobblestone>         * 1,
    <minecraft:sand>                    : <minecraft:gravel>              * 1,

    <ore:dustDirtyIron>                 : <immersiveengineering:metal:18> * 1,
    <ore:dustDirtyGold>                 : <immersiveengineering:metal:19> * 1,
    <ore:dustDirtyOsmium>               : <mekanism:dust:2>               * 1,
    <ore:dustDirtyTin>                  : <mekanism:dust:4>               * 1,
    <ore:dustDirtySilver>               : <immersiveengineering:metal:12> * 1,
    <ore:dustDirtyLead>                 : <immersiveengineering:metal:11> * 1,
    <ore:dustDirtyCopper>               : <immersiveengineering:metal:9>  * 1

};

for input, output in dissolutions {

    MKEnrichment.addRecipe(input, output);

}