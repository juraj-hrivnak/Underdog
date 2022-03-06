#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Item;

function createNormalItem(name as string) {
    VanillaFactory.createItem(name).register();
}

var toRegister as string[] = [
    "firewood_oak",
    "firewood_spruce",
    "firewood_birch",
    "firewood_jungle",
    "firewood_acacia",
    "firewood_dark_oak",

    "firewood_sacred_oak",
    "firewood_cherry",
    "firewood_umbran",
    "firewood_fir",
    "firewood_ethereal",
    "firewood_magic",
    "firewood_mangrove",
    "firewood_palm",
    "firewood_redwood",
    "firewood_willow",
    "firewood_pine",
    "firewood_hellbark",
    "firewood_jacaranda",
    "firewood_mahogany",
    "firewood_ebony",
    "firewood_eucalyptus",

    "rustic_firewood_olive",
    "rustic_firewood_ironwood",

    "forestry_firewood_larch",
    "forestry_firewood_teak",
    "forestry_firewood_acacia",
    "forestry_firewood_lime",
    "forestry_firewood_chestnut",
    "forestry_firewood_wenge",
    "forestry_firewood_baobab",
    "forestry_firewood_sequoia",
    "forestry_firewood_kapok",
    "forestry_firewood_ebony",
    "forestry_firewood_mahogany",
    "forestry_firewood_balsa",
    "forestry_firewood_willow",
    "forestry_firewood_walnut",
    "forestry_firewood_greenheart",
    "forestry_firewood_cherry",
    "forestry_firewood_mahoe",
    "forestry_firewood_poplar",
    "forestry_firewood_palm",
    "forestry_firewood_papaya",
    "forestry_firewood_pine",
    "forestry_firewood_plum",
    "forestry_firewood_maple",
    "forestry_firewood_citrus",
    "forestry_firewood_giganteum",
    "forestry_firewood_ipe",
    "forestry_firewood_padauk",
    "forestry_firewood_cocobolo",
    "forestry_firewood_zebrawood",

    "cuisine_firewood_citrus",
];

for register in toRegister {
    createNormalItem(register);
}
