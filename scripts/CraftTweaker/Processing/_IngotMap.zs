
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;

val ingotMap as IItemStack[][][IOreDictEntry] = {

//  Oredict,                           Default,                                 To remove
    <ore:ingotIron>                : [[<minecraft:iron_ingot>               ], [                                                    ]],
    <ore:ingotGold>                : [[<minecraft:gold_ingot>               ], [                                                    ]],
    // <ore:ingotCoal>                : [[],[]],
    // <ore:ingotLapis>               : [[],[]],
    // <ore:ingotDiamond>             : [[],[]],
    // <ore:ingotEmerald>             : [[],[]],
    // <ore:ingotQuartz>              : [[],[]],
    // <ore:ingotRedstone>            : [[],[]],


    <ore:ingotCopper>              : [[<geolosys:ingot>                     ], [<immersiveengineering:metal>, <mekanism:ingot:5>, <forestry:ingot_copper>]],
    <ore:ingotTin>                 : [[<geolosys:ingot:1>                   ], [<mekanism:ingot:6>, <forestry:ingot_tin>            ]],
    <ore:ingotSilver>              : [[<geolosys:ingot:2>                   ], [<immersiveengineering:metal:3>                      ]],
    <ore:ingotLead>                : [[<geolosys:ingot:3>                   ], [<immersiveengineering:metal:2>                      ]],
    <ore:ingotAluminum>            : [[<geolosys:ingot:4>                   ], [<immersiveengineering:metal:1>                      ]],
    <ore:ingotNickel>              : [[<geolosys:ingot:5>                   ], [<immersiveengineering:metal:4>                      ]],
    <ore:ingotPlatinum>            : [[<geolosys:ingot:6>                   ], [                                                    ]],
    <ore:ingotZinc>                : [[<geolosys:ingot:7>                   ], [                                                    ]],
    <ore:ingotUranium>             : [[<immersiveengineering:metal:5>       ], [                                                    ]],
    <ore:ingotOsmium>              : [[<mekanism:ingot:1>                   ], [                                                    ]],
    <ore:ingotCobalt>              : [[<tconstruct:ingots>                  ], [                                                    ]],
    <ore:ingotArdite>              : [[<tconstruct:ingots:1>                ], [                                                    ]],

    <ore:ingotHOPGraphite>         : [[<immersiveengineering:material:19>   ], [                                                    ]],
    <ore:ingotConstantan>          : [[<immersiveengineering:metal:6>       ], [                                                    ]],
    <ore:ingotElectrum>            : [[<immersiveengineering:metal:7>       ], [                                                    ]],
    <ore:ingotSteel>               : [[<immersiveengineering:metal:8>       ], [<mekanism:ingot:4>                                  ]],

    <ore:ingotBronze>              : [[<mekanism:ingot:2>                   ], [<forestry:ingot_bronze>                             ]],

};

for oredict, item in ingotMap {
    for i in item[0] {
        i.addShiftTooltip(format.green(format.bold(game.localize("underdog.tooltip.default_ingot"))));
    }
    for i in item[1] {
        oredict.remove(i);
        furnace.remove(i);
        rh(i);
    }
}
