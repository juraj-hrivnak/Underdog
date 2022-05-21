
#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hide as h;

import mods.immersiveengineering.Crusher as IECrusher;
import mods.mekanism.combiner as MKCombiner;
import mods.mekanism.chemical.dissolution as MKDissolution;
import mods.mekanism.enrichment as MKEnrichment;
import mods.mekanism.chemical.injection as MKInjection;
import mods.mekanism.crusher as MKCrusher;
import mods.mekanism.purification as MKPurification;
import mods.mekanism.sawmill as MKSawmill;
import mods.mekanism.infuser as MKInfuser;
import mods.immersiveengineering.BlastFurnace as BlastFurnace;
import mods.immersiveengineering.ArcFurnace as ArcFurnace;


MKPurification.removeAllRecipes();
MKDissolution.removeAllRecipes();
MKEnrichment.removeAllRecipes();
MKInjection.removeAllRecipes();
MKCombiner.removeAllRecipes();
MKCrusher.removeAllRecipes();
MKInfuser.removeAllRecipes();
MKSawmill.removeAllRecipes();
IECrusher.removeAll();
BlastFurnace.removeAll();
ArcFurnace.removeAll();



val oreMap as IItemStack[][IOreDictEntry] = {

// Vanilla
    <ore:oreIron>                : [<minecraft:iron_ore>, <divergentunderground:hard_iron_ore>                                                                                       ],
    <ore:oreGold>                : [<minecraft:gold_ore>, <divergentunderground:hard_gold_ore>                                                                                       ],
    <ore:oreCoal>                : [<minecraft:coal_ore>, <divergentunderground:hard_coal_ore>                                                                                       ],
    <ore:oreLapis>               : [<minecraft:lapis_ore>, <divergentunderground:hard_lapis_ore>                                                                                     ],
    <ore:oreDiamond>             : [<minecraft:diamond_ore>, <divergentunderground:hard_diamond_ore>                                                                                 ],
    <ore:oreEmerald>             : [<minecraft:emerald_ore>, <divergentunderground:hard_emerald_ore>                                                                                 ],
    <ore:oreQuartz>              : [<minecraft:quartz_ore>                                                                                                                           ],
    <ore:oreRedstone>            : [<minecraft:redstone_ore>, <divergentunderground:hard_redstone_ore>                                                                               ],

// Modded
    <ore:oreCopper>              : [<divergentunderground:ie_hard_copper_ore>, <immersiveengineering:ore>, <divergentunderground:mekanism_hard_copper_ore>, <mekanism:oreblock:1>, <forestry:resources:1>, <divergentunderground:forestry_hard_copper_ore>],
    <ore:oreTin>                 : [<divergentunderground:mekanism_hard_tin_ore>, <mekanism:oreblock:2>, <forestry:resources:2>, <divergentunderground:forestry_hard_tin_ore>        ],
    <ore:oreSilver>              : [<divergentunderground:ie_hard_silver_ore>, <immersiveengineering:ore:3>                                                                          ],
    <ore:oreLead>                : [<divergentunderground:ie_hard_lead_ore>, <immersiveengineering:ore:2>                                                                            ],
    <ore:oreAluminum>            : [<divergentunderground:ie_hard_aluminum_ore>, <immersiveengineering:ore:1>                                                                        ],
    <ore:oreNickel>              : [<divergentunderground:ie_hard_nickel_ore>, <immersiveengineering:ore:4>                                                                          ],
    <ore:orePlatinum>            : [                                                                                                                                                 ],
    <ore:oreZinc>                : [                                                                                                                                                 ],
    <ore:oreUranium>             : [<divergentunderground:ie_hard_uranium_ore>, <immersiveengineering:ore:5>                                                                         ],
    <ore:oreYellorium>           : [                                                                                                                                                 ],
    <ore:oreOsmium>              : [<divergentunderground:mekanism_hard_osmium_ore>, <mekanism:oreblock>                                                                             ],
    <ore:oreCobalt>              : [<divergentunderground:tconstruct_hard_cobalt_ore>, <tconstruct:ore>                                                                              ],
    <ore:oreArdite>              : [<divergentunderground:tconstruct_hard_ardite_ore>, <tconstruct:ore:1>                                                                            ],

    <ore:oreCertusQuartz>        : [<appliedenergistics2:quartz_ore>, <appliedenergistics2:charged_quartz_ore>                                                                       ],
    <ore:oreChargedCertusQuartz> : [<appliedenergistics2:charged_quartz_ore>                                                                                                         ],

    <ore:oreApatite>             : [<divergentunderground:forestry_hard_apatite_ore>, <forestry:resources>                                                                           ],

};

// Rich
val richOres as IItemStack[IOreDictEntry] = {
    <ore:richOreIron>       : <divergentunderground:ore_iron>,
    <ore:richOreGold>       : <divergentunderground:ore_gold>,
    <ore:richOreCopper>     : <divergentunderground:ore_ie_copper>,
    <ore:richOreAluminum>   : <divergentunderground:ore_ie_aluminum>,
    <ore:richOreLead>       : <divergentunderground:ore_ie_lead>,
    <ore:richOreSilver>     : <divergentunderground:ore_ie_silver>,
    <ore:richOreNickel>     : <divergentunderground:ore_ie_nickel>,
    <ore:richOreUranium>    : <divergentunderground:ore_ie_uranium>,
    <ore:richOreMKOsmium>   : <divergentunderground:ore_mekanism_osmium>,
    <ore:richOreMKCopper>   : <divergentunderground:ore_mekanism_copper>,
    <ore:richOreMKTin>      : <divergentunderground:ore_mekanism_tin>
};

for oredict, i in richOres {
    oredict.add(i);
    i.displayName = game.localize("underdog.displayname.rich_prefix") ~" "~ i.displayName;
}

for oredict, item in oreMap {

    oredict.removeItems(item);

    for i in item {
        rh(i);
        i.addTooltip(format.red(format.bold(game.localize("underdog.tooltip.block_should_be_unused"))));
    }

    oredict.removeItems(richOres.values);
}

// Removing forestry rock ores
<ore:oreTin>.remove(<divergentunderground:ore_forestry_tin>);
<ore:oreCopper>.remove(<divergentunderground:ore_forestry_copper>);
h(<divergentunderground:ore_forestry_tin>);
h(<divergentunderground:ore_forestry_copper>);
