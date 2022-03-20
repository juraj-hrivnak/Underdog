
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;

import scripts.CraftTweaker.Utils.RecipeUtils;

val nuggetMap as IItemStack[][][IOreDictEntry] = {

//  Oredict,                            Default,                            To remove,                          Ingot
    <ore:nuggetIron>                : [[<minecraft:iron_nugget>         ], [<immersiveengineering:metal:29> ], [<minecraft:iron_ingot>               ]],
    <ore:nuggetGold>                : [[<minecraft:gold_nugget>         ], [                                ], [<minecraft:gold_ingot>               ]],


    <ore:nuggetCopper>              : [[<immersiveengineering:metal:20> ], [<mekanism:nugget:5>             ], [<geolosys:ingot>                     ]],
    <ore:nuggetTin>                 : [[<mekanism:nugget:6>             ], [                                ], [<geolosys:ingot:1>                   ]],
    <ore:nuggetSilver>              : [[<immersiveengineering:metal:23> ], [                                ], [<geolosys:ingot:2>                   ]],
    <ore:nuggetLead>                : [[<immersiveengineering:metal:22> ], [                                ], [<geolosys:ingot:3>                   ]],
    <ore:nuggetAluminum>            : [[<immersiveengineering:metal:21> ], [                                ], [<geolosys:ingot:4>                   ]],
    <ore:nuggetNickel>              : [[<immersiveengineering:metal:24> ], [                                ], [<geolosys:ingot:5>                   ]],
    // <ore:nuggetPlatinum>            : [[                                ], [                                ], [<geolosys:ingot:6>                   ]],
    // <ore:nuggetZinc>                : [[                                ], [                                ], [<geolosys:ingot:7>                   ]],
    <ore:nuggetUranium>             : [[<immersiveengineering:metal:25> ], [                                ], [<immersiveengineering:metal:5>       ]],
    <ore:nuggetOsmium>              : [[<mekanism:nugget:1>             ], [                                ], [<mekanism:ingot:1>                   ]],
    <ore:nuggetCobalt>              : [[<tconstruct:nuggets>            ], [                                ], [<tconstruct:ingots>                  ]],
    <ore:nuggetArdite>              : [[<tconstruct:nuggets:1>          ], [                                ], [<tconstruct:ingots:1>                ]],

    <ore:nuggetConstantan>          : [[<immersiveengineering:metal:26> ], [                                ], [<immersiveengineering:metal:6>       ]],
    <ore:nuggetElectrum>            : [[<immersiveengineering:metal:27> ], [                                ], [<immersiveengineering:metal:7>       ]],
    <ore:nuggetSteel>               : [[<immersiveengineering:metal:28> ], [<mekanism:nugget:4>             ], [<immersiveengineering:metal:8>       ]],

    <ore:nuggetBronze>              : [[<mekanism:nugget:2>             ], [                                ], [<mekanism:ingot:2>                   ]],

};

for oredict, item in nuggetMap {
    for i in item[0] {
        i.addShiftTooltip(format.green(format.bold(game.localize("underdog.tooltip.default_nugget"))));
        recipes.remove(i);
        recipes.addShapeless(i * 9, item[2]);
    }
    for i in item[1] {
        oredict.remove(i);
        furnace.remove(i);
        rh(i);
    }
    for i in item[2] {
        RecipeUtils.tweakRecipe(true, i, RecipeUtils.createFull3(oredict));
    }
}
