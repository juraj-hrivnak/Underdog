import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.oredict.IOreDictEntry;

val firewoodOredict = <ore:firewood>;

val firewoods = [
    <contenttweaker:firewood_oak>,
    <contenttweaker:firewood_spruce>,
    <contenttweaker:firewood_birch>,
    <contenttweaker:firewood_jungle>,
    <contenttweaker:firewood_acacia>,
    <contenttweaker:firewood_dark_oak>,
    <contenttweaker:firewood_sacred_oak>,
    <contenttweaker:firewood_cherry>,
    <contenttweaker:firewood_umbran>,
    <contenttweaker:firewood_fir>,
    <contenttweaker:firewood_ethereal>,
    <contenttweaker:firewood_magic>,
    <contenttweaker:firewood_mangrove>,
    <contenttweaker:firewood_palm>,
    <contenttweaker:firewood_redwood>,
    <contenttweaker:firewood_willow>,
    <contenttweaker:firewood_pine>,
    <contenttweaker:firewood_hellbark>,
    <contenttweaker:firewood_jacaranda>,
    <contenttweaker:firewood_mahogany>,
    <contenttweaker:firewood_ebony>,
    <contenttweaker:firewood_eucalyptus>
] as IItemStack[];

for item in firewoods {
    firewoodOredict.add(item);
}

furnace.setFuel(<ore:firewood>, 930);

