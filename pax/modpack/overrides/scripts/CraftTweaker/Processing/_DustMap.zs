
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hide as h;

val dustMapTwo as IItemStack[][][IOreDictEntry] = {

//  Oredict,                        Default,                                 To remove
    <ore:dustIron>              : [[<immersiveengineering:metal:18>      ], [<appliedenergistics2:material:49>, <mekanism:dust>]],
    <ore:dustGold>              : [[<immersiveengineering:metal:19>      ], [<appliedenergistics2:material:51>, <mekanism:dust:1>]],
    // <ore:dustCoal>              : [[],[]],
    // <ore:dustLapis>             : [[],[]],
    <ore:dustDiamond>           : [[<mekanism:otherdust>                 ], []],
    // <ore:dustEmerald>           : [[],[]],
    // <ore:dustQuartz>            : [[],[]],
    // <ore:dustRedstone>          : [[],[]],


    <ore:dustCopper>            : [[<immersiveengineering:metal:9>       ], [<mekanism:dust:3>]],
    <ore:dustTin>               : [[<mekanism:dust:4>                    ], []],
    <ore:dustSilver>            : [[<immersiveengineering:metal:12>      ], [<mekanism:dust:5>]],
    <ore:dustLead>              : [[<immersiveengineering:metal:11>      ], [<mekanism:dust:6>]],
    <ore:dustAluminum>          : [[<immersiveengineering:metal:10>      ], []],
    <ore:dustNickel>            : [[<immersiveengineering:metal:13>      ], []],
    // <ore:dustPlatinum>          : [[<geolosys:ingot:6>                   ], []],
    // <ore:dustZinc>              : [[<geolosys:ingot:7>                   ], []],
    <ore:dustUranium>           : [[<immersiveengineering:metal:14>      ], []],
    <ore:dustOsmium>            : [[<mekanism:dust:2>                    ], []],

    // <ore:dustCobalt>            : [[<tconstruct:ingots>                  ], []],
    // <ore:dustArdite>            : [[<tconstruct:ingots:1>                ], []],

    <ore:dustLithium>           : [[<mekanism:otherdust:4>               ], []],


    <ore:dustCoke>              : [[<immersiveengineering:material:17>   ], []],

    <ore:dustCertusQuartz>      : [[<appliedenergistics2:material:2>     ], []],
    <ore:dustEnderPearl>        : [[<appliedenergistics2:material:46>    ], []],
    <ore:dustFluix>             : [[<appliedenergistics2:material:8>     ], []],
    <ore:dustQuartz>            : [[<appliedenergistics2:material:3>     ], []],

    <ore:dustHOPGraphite>       : [[<immersiveengineering:material:18>   ], []],
    <ore:dustConstantan>        : [[<immersiveengineering:metal:15>      ], []],
    <ore:dustElectrum>          : [[<immersiveengineering:metal:16>      ], []],
    <ore:dustSteel>             : [[<immersiveengineering:metal:17>      ], [<mekanism:otherdust:1>]],

    <ore:dustSulfur>            : [[<mekanism:otherdust:3>               ], [<immersiveengineering:material:25>]],

};

val dustMap as IItemStack[] = [

    <immersiveengineering:metal:18>     ,   // Iron
    <immersiveengineering:metal:19>     ,   // Gold

    <immersiveengineering:metal:9>      ,   // Copper
    <mekanism:dust:4>                   ,   // Tin
    <immersiveengineering:metal:12>     ,   // Silver
    <immersiveengineering:metal:11>     ,   // Lead
    <immersiveengineering:metal:10>     ,   // Aluminum
    <immersiveengineering:metal:13>     ,   // Nickel
    <immersiveengineering:metal:14>     ,   // Uranium
    <mekanism:dust:2>                   ,   // Osmium

    <immersiveengineering:material:17>  ,   // Coke

    <appliedenergistics2:material:2>    ,   // Certus Quartz
    <appliedenergistics2:material:46>   ,   // Ender Dust
    <appliedenergistics2:material:8>    ,   // Fluix
    <appliedenergistics2:material:3>    ,   // Quartz
    <appliedenergistics2:material:45>   ,   // Meteorite

    <immersiveengineering:material:18>  ,   // HOP Graphite
    <immersiveengineering:metal:15>     ,   // Constantan
    <immersiveengineering:metal:16>     ,   // Electrum
    <immersiveengineering:metal:17>     ,   // Steel

    <mekanism:otherdust>                ,   // Diamond
    <mekanism:otherdust:4>              ,   // Lithium
    <mekanism:otherdust:3>              ,   // Sulfur

];

for oredict, item in dustMapTwo {
    for i in item[0] {
        i.addShiftTooltip(format.green(format.bold(game.localize("underdog.tooltip.default_dust"))));
    }
    for i in item[1] {
        oredict.remove(i);
        h(i);
    }
}
