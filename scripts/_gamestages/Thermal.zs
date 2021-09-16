import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// not "thermalexpansion.smelter"
val jeiCategories = [
    "thermalexpansion.furnace",
    "thermalexpansion.furnace_food",
    "thermalexpansion.furnace_ore",
    "thermalexpansion.furnace_pyrolysis",
    "thermalexpansion.pulverizer",
    "thermalexpansion.pulverizer_petrotheum",
    "thermalexpansion.sawmill",
    "thermalexpansion.sawmill_tapper",
    "thermalexpansion.smelter_pyrotheum",
    "thermalexpansion.insolator",
    "thermalexpansion.insolator_tree",
    "thermalexpansion.compactor",
    "thermalexpansion.compactor_mint",
    "thermalexpansion.compactor_gear",
    "thermalexpansion.crucible",
    "thermalexpansion.crucible_lava",
    "thermalexpansion.refinery",
    "thermalexpansion.refinery_fossil",
    "thermalexpansion.refinery_potion",
    "thermalexpansion.transposer_fill",
    "thermalexpansion.transposer_extract",
    "thermalexpansion.charger",
    "thermalexpansion.centrifuge",
    "thermalexpansion.centrifuge_mobs",
    "thermalexpansion.brewer",
    "thermalexpansion.enchanter",
    "thermalexpansion.precipitator",
    "thermalexpansion.extruder",
    "thermalexpansion.extruder_sedimentary",
    "thermalexpansion.steam",
    "thermalexpansion.magmatic",
    "thermalexpansion.compression",
    "thermalexpansion.reactant",
    "thermalexpansion.reactant_elemental",
    "thermalexpansion.enervation",
    "thermalexpansion.numismatic",
    "thermalexpansion.numismatic_gem",
    "thermalexpansion.factorizer_combine",
    "thermalexpansion.factorizer_split",
    "thermalexpansion.coolant"
] as string[];

for i in jeiCategories {
    mods.ItemStages.stageRecipeCategory("thermal", i);
}

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("machine_frame", <thermalexpansion:frame>, 
   [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:gearTin>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]],

    function(out, ins, cInfo) {
        return out;
    },
    //IRecipeAction
    function(out, cInfo, player) {
        player.addGameStage("thermal");
});

mods.ItemStages.stageModItems("thermal", "thermalexpansion");

val thermalItemsToKeep = [
    <thermalexpansion:frame>,
    <thermalfoundation:material:257>,
    <thermalexpansion:machine:3>
] as IItemStack[];

for i in thermalItemsToKeep {
    mods.ItemStages.removeItemStage(i);
}