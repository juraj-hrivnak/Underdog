
#modloaded nuclearcraft
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.ItemStages;

import scripts.CraftTweaker.Utils.RecipeUtils;

val jeiCategories = [
    "nuclearcraft_separator",
    "nuclearcraft_decay_hastener",
    "nuclearcraft_fuel_reprocessor",
    "nuclearcraft_infuser",
    "nuclearcraft_melter",
    "nuclearcraft_supercooler",
    "nuclearcraft_electrolyzer",
    "nuclearcraft_assembler",
    "nuclearcraft_ingot_former",
    "nuclearcraft_pressurizer",
    "nuclearcraft_chemical_reactor",
    "nuclearcraft_salt_mixer",
    "nuclearcraft_crystallizer",
    "nuclearcraft_enricher",
    "nuclearcraft_extractor",
    "nuclearcraft_centrifuge",
    "nuclearcraft_rock_crusher",
    "nuclearcraft_collector",
    "nuclearcraft_decay_generator",
    "nuclearcraft_fission_moderator",
    "nuclearcraft_fission_reflector",
    "nuclearcraft_fission_irradiator",
    "nuclearcraft_pebble_fission",
    "nuclearcraft_solid_fission",
    "nuclearcraft_fission_heating",
    "nuclearcraft_salt_fission",
    "nuclearcraft_coolant_heater",
    "nuclearcraft_emergency_cooling",
    "nuclearcraft_heat_exchanger",
    "nuclearcraft_condenser",
    "nuclearcraft_high_turbine",
    "nuclearcraft_radiation_scrubber"
] as string[];

for i in jeiCategories {
    ItemStages.stageRecipeCategory("NuclearCraft", i);
}

RecipeUtils.tweakRecipe(true, <nuclearcraft:part:10>, 
   [[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>],
    [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>],
    [<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]],

    function(out, ins, cInfo) {
        return out;
    },
    //IRecipeAction
    function(out, cInfo, player) {
        player.addGameStage("NuclearCraft");
});

ItemStages.stageModItems("NuclearCraft", "nuclearcraft");

val itemsToKeep = [
    <nuclearcraft:manufactory>,
    <nuclearcraft:alloy_furnace>,
    <nuclearcraft:alloy:1>,
    <nuclearcraft:part:10>,
    <nuclearcraft:part>,
    <nuclearcraft:part:4>,
    <nuclearcraft:dust:6>,
    <nuclearcraft:ingot:6>,
    <nuclearcraft:dust:8>,
    <nuclearcraft:ingot:8>,
    <nuclearcraft:alloy:6>,
    <nuclearcraft:ingot:5>,
    <nuclearcraft:dust:5>
] as IItemStack[];

for i in itemsToKeep {
    ItemStages.removeItemStage(i);
}
