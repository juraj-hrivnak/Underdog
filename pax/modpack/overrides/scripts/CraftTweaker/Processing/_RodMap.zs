
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;

val rodMap as IItemStack[][][IOreDictEntry] = {

//  Oredict,                    Default,                              Ingot
    <ore:stickIron>         : [[<immersiveengineering:material:1> ], [<minecraft:iron_ingot>         ]],
    <ore:stickGold>         : [[<immersiveposts:metal_rods>       ], [<minecraft:gold_ingot>         ]],

    <ore:stickCopper>       : [[<immersiveposts:metal_rods:1>     ], [<geolosys:ingot>               ]],
    <ore:stickTin>          : [[                                  ], [<geolosys:ingot:1>             ]],
    <ore:stickSilver>       : [[<immersiveposts:metal_rods:3>     ], [<geolosys:ingot:2>             ]],
    <ore:stickLead>         : [[<immersiveposts:metal_rods:2>     ], [<geolosys:ingot:3>             ]],
    <ore:stickAluminum>     : [[<immersiveengineering:material:3> ], [<geolosys:ingot:4>             ]],
    <ore:stickNickel>       : [[<immersiveposts:metal_rods:4>     ], [<geolosys:ingot:5>             ]],

    <ore:stickUranium>      : [[<immersiveposts:metal_rods:7>     ], [<immersiveengineering:metal:5> ]],

    <ore:stickConstantan>   : [[<immersiveposts:metal_rods:5>     ], [<immersiveengineering:metal:6> ]],
    <ore:stickElectrum>     : [[<immersiveposts:metal_rods:6>     ], [<immersiveengineering:metal:7> ]],
    <ore:stickSteel>        : [[<immersiveengineering:material:2> ], [<immersiveengineering:metal:8> ]],

};

for oredict, item in rodMap {
    for i in item[0] {
        i.addShiftTooltip(format.green(format.bold("Default rod!")));
        recipes.remove(i);
        recipes.addShaped(i * 2,
           [item[1],
            item[1]]);
    }
}