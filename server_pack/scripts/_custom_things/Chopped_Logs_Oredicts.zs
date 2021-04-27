import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IItemDefinition as IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;

val choppedWood = <ore:choppedWood>;

val allChoppedWoodBlocks = [
    <contenttweaker:chopped_acacia_wood>,
    <contenttweaker:chopped_sacred_oak_wood>,
    <contenttweaker:chopped_mahogany_wood>,
    <contenttweaker:chopped_palm_wood>,
    <contenttweaker:chopped_jungle_wood>,
    <contenttweaker:chopped_spruce_wood>,
    <contenttweaker:chopped_mangrove_wood>,
    <contenttweaker:chopped_dark_oak_wood>,
    <contenttweaker:chopped_eucalyptus_wood>,
    <contenttweaker:chopped_birch_wood>,
    <contenttweaker:chopped_ethereal_wood>,
    <contenttweaker:chopped_ebony_wood>,
    <contenttweaker:chopped_fir_wood>,
    <contenttweaker:chopped_jacaranda_wood>,
    <contenttweaker:chopped_willow_wood>,
    <contenttweaker:chopped_oak_wood>,
    <contenttweaker:chopped_hellbark_wood>,
    <contenttweaker:chopped_redwood_wood>,
    <contenttweaker:chopped_cherry_wood>,
    <contenttweaker:chopped_pine_wood>,
    <contenttweaker:chopped_umbran_wood>,
    <contenttweaker:chopped_magic_wood>
    ] as IItemStack[];

for item in allChoppedWoodBlocks {
	    choppedWood.add(item);
    }