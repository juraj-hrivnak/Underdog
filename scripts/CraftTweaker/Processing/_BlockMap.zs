
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val ingotMap as IItemStack[][][IOreDictEntry] = {

//  Oredict,                           Default,                             To remove,                                                  Ingot
    <ore:blockIron>                : [[<minecraft:iron_block>           ], [                                                        ], [<minecraft:iron_ingot>               ]],
    <ore:blockGold>                : [[<minecraft:gold_block>           ], [                                                        ], [<minecraft:gold_ingot>               ]],
    // <ore:blockCoal>                : [[],[]],
    // <ore:blockLapis>               : [[],[]],
    // <ore:blockDiamond>             : [[],[]],
    // <ore:blockEmerald>             : [[],[]],
    // <ore:blockQuartz>              : [[],[]],
    // <ore:blockRedstone>            : [[],[]],


    <ore:blockCopper>              : [[<immersiveengineering:storage>   ], [<forestry:resource_storage:1>, <mekanism:basicblock:12> ], [<geolosys:ingot>                     ]],
    <ore:blockTin>                 : [[<mekanism:basicblock:13>         ], [<forestry:resource_storage:2>                           ], [<geolosys:ingot:1>                   ]],
    <ore:blockSilver>              : [[<immersiveengineering:storage:3> ], [                                                        ], [<geolosys:ingot:2>                   ]],
    <ore:blockLead>                : [[<immersiveengineering:storage:2> ], [                                                        ], [<geolosys:ingot:3>                   ]],
    <ore:blockAluminum>            : [[<immersiveengineering:storage:1> ], [                                                        ], [<geolosys:ingot:4>                   ]],
    <ore:blockNickel>              : [[<immersiveengineering:storage:4> ], [                                                        ], [<geolosys:ingot:5>                   ]],
    <ore:blockPlatinum>            : [[<chisel:blockplatinum>           ], [                                                        ], [<geolosys:ingot:6>                   ]],
    // <ore:blockZinc>                : [[                                 ], [                                                        ], [<geolosys:ingot:7>                   ]],
    <ore:blockUranium>             : [[<immersiveengineering:storage:5> ], [                                                        ], [<immersiveengineering:metal:5>       ]],
    <ore:blockOsmium>              : [[<mekanism:basicblock>            ], [                                                        ], [<mekanism:ingot:1>                   ]],
    <ore:blockCobalt>              : [[<tconstruct:metal>               ], [                                                        ], [<tconstruct:ingots>                  ]],
    <ore:blockArdite>              : [[<tconstruct:metal:1>             ], [                                                        ], [<tconstruct:ingots:1>                ]],

    // <ore:blockHOPGraphite>         : [[                                 ], [                                                        ], [<immersiveengineering:material:19>   ]],
    <ore:blockConstantan>          : [[<immersiveengineering:storage:6> ], [                                                        ], [<immersiveengineering:metal:6>       ]],
    <ore:blockElectrum>            : [[<immersiveengineering:storage:7> ], [                                                        ], [<immersiveengineering:metal:7>       ]],
    <ore:blockSteel>               : [[<immersiveengineering:storage:8> ], [<mekanism:basicblock:5>                                 ], [<immersiveengineering:metal:8>       ]],

    <ore:blockBronze>              : [[<mekanism:basicblock:1>          ], [<forestry:resource_storage:3>                           ], [<mekanism:ingot:2>                   ]],

};

for oredict, item in ingotMap {
    for i in item[0] {
        i.addShiftTooltip(format.green(format.bold(game.localize("underdog.tooltip.default_block"))));
        RecipeUtils.tweakRecipe(true, i, RecipeUtils.createFull3(item[2][0]));
    }
    for i in item[1] {
        oredict.remove(i);
        rh(i);
    }
    for i in item[2] {
        recipes.removeShapeless(i, [oredict]);
        recipes.addShapeless(i * 9, [oredict]);
    }
}
