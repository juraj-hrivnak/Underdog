#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Item;

function createFirewood(name as string) {
    val x = VanillaFactory.createItem(name);
    x.register();
}

createFirewood("firewood_oak");
createFirewood("firewood_spruce");
createFirewood("firewood_birch");
createFirewood("firewood_jungle");
createFirewood("firewood_acacia");
createFirewood("firewood_dark_oak");

createFirewood("firewood_sacred_oak");
createFirewood("firewood_cherry");
createFirewood("firewood_umbran");
createFirewood("firewood_fir");
createFirewood("firewood_ethereal");
createFirewood("firewood_magic");
createFirewood("firewood_mangrove");
createFirewood("firewood_palm");
createFirewood("firewood_redwood");
createFirewood("firewood_willow");
createFirewood("firewood_pine");
createFirewood("firewood_hellbark");
createFirewood("firewood_jacaranda");
createFirewood("firewood_mahogany");
createFirewood("firewood_ebony");
createFirewood("firewood_eucalyptus");

createFirewood("rustic_firewood_olive");
createFirewood("rustic_firewood_ironwood");

createFirewood("forestry_firewood_larch");
createFirewood("forestry_firewood_teak");
createFirewood("forestry_firewood_acacia");
createFirewood("forestry_firewood_lime");
createFirewood("forestry_firewood_chestnut");
createFirewood("forestry_firewood_wenge");
createFirewood("forestry_firewood_baobab");
createFirewood("forestry_firewood_sequoia");
createFirewood("forestry_firewood_kapok");
createFirewood("forestry_firewood_ebony");
createFirewood("forestry_firewood_mahogany");
createFirewood("forestry_firewood_balsa");
createFirewood("forestry_firewood_willow");
createFirewood("forestry_firewood_walnut");
createFirewood("forestry_firewood_greenheart");
createFirewood("forestry_firewood_cherry");
createFirewood("forestry_firewood_mahoe");
createFirewood("forestry_firewood_poplar");
createFirewood("forestry_firewood_palm");
createFirewood("forestry_firewood_papaya");
createFirewood("forestry_firewood_pine");
createFirewood("forestry_firewood_plum");
createFirewood("forestry_firewood_maple");
createFirewood("forestry_firewood_citrus");
createFirewood("forestry_firewood_giganteum");
createFirewood("forestry_firewood_ipe");
createFirewood("forestry_firewood_padauk");
createFirewood("forestry_firewood_cocobolo");
createFirewood("forestry_firewood_zebrawood");

createFirewood("cuisine_firewood_citrus");
