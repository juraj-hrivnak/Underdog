
#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val lumbersAndPanels = {
    <contenttweaker:lumber_vanilla_oak> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=oak]"}),
    <contenttweaker:lumber_vanilla_spruce> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=spruce]"}),
    <contenttweaker:lumber_vanilla_birch> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=birch]"}),
    <contenttweaker:lumber_vanilla_jungle> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=jungle]"}),
    <contenttweaker:lumber_vanilla_acacia> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=acacia]"}),
    <contenttweaker:lumber_vanilla_dark_oak> : <microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=dark_oak]"}),
    <contenttweaker:lumber_sacred_oak> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=sacred_oak]"}),
    <contenttweaker:lumber_cherry> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=cherry]"}),
    <contenttweaker:lumber_umbran> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=umbran]"}),
    <contenttweaker:lumber_fir> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=fir]"}),
    <contenttweaker:lumber_ethereal> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ethereal]"}),
    <contenttweaker:lumber_magic> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=magic]"}),
    <contenttweaker:lumber_mangrove> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mangrove]"}),
    <contenttweaker:lumber_palm> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=palm]"}),
    <contenttweaker:lumber_redwood> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=redwood]"}),
    <contenttweaker:lumber_willow> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=willow]"}),
    <contenttweaker:lumber_pine> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=pine]"}),
    <contenttweaker:lumber_hellbark> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=hellbark]"}),
    <contenttweaker:lumber_jacaranda> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=jacaranda]"}),
    <contenttweaker:lumber_mahogany> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mahogany]"}),
    <contenttweaker:lumber_ebony> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ebony]"}),
    <contenttweaker:lumber_eucalyptus> : <microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=eucalyptus]"}),
    <contenttweaker:lumber_planks_olive> : <microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=olive]"}),
    <contenttweaker:lumber_planks_ironwood> : <microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=ironwood]"}),
    <contenttweaker:lumber_planks.larch> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=larch]"}),
    <contenttweaker:lumber_planks.teak> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=teak]"}),
    <contenttweaker:lumber_planks.acacia> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=acacia]"}),
    <contenttweaker:lumber_planks.lime> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=lime]"}),
    <contenttweaker:lumber_planks.chestnut> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=chestnut]"}),
    <contenttweaker:lumber_planks.wenge> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=wenge]"}),
    <contenttweaker:lumber_planks.baobab> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=baobab]"}),
    <contenttweaker:lumber_planks.sequoia> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=sequoia]"}),
    <contenttweaker:lumber_planks.kapok> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=kapok]"}),
    <contenttweaker:lumber_planks.ebony> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=ebony]"}),
    <contenttweaker:lumber_planks.mahogany> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=mahogany]"}),
    <contenttweaker:lumber_planks.balsa> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=balsa]"}),
    <contenttweaker:lumber_planks.willow> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=willow]"}),
    <contenttweaker:lumber_planks.walnut> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=walnut]"}),
    <contenttweaker:lumber_planks.greenheart> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=greenheart]"}),
    <contenttweaker:lumber_planks.cherry> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=cherry]"}),
    <contenttweaker:lumber_planks.mahoe> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=mahoe]"}),
    <contenttweaker:lumber_planks.poplar> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=poplar]"}),
    <contenttweaker:lumber_planks.palm> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=palm]"}),
    <contenttweaker:lumber_planks.papaya> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=papaya]"}),
    <contenttweaker:lumber_planks.pine> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=pine]"}),
    <contenttweaker:lumber_planks.plum> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=plum]"}),
    <contenttweaker:lumber_planks.maple> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=maple]"}),
    <contenttweaker:lumber_planks.citrus> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=citrus]"}),
    <contenttweaker:lumber_planks.giganteum> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=giganteum]"}),
    <contenttweaker:lumber_planks.ipe> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=ipe]"}),
    <contenttweaker:lumber_planks.padauk> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=padauk]"}),
    <contenttweaker:lumber_planks.cocobolo> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=cocobolo]"}),
    <contenttweaker:lumber_planks.zebrawood> : <microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=zebrawood]"})
} as IItemStack[IItemStack];

for lumber, panel in lumbersAndPanels {
	recipes.addShapeless(panel, [lumber, <ore:axes>.reuse().transformDamage()]);
    recipes.addShapeless(lumber, [panel, <ore:axes>.reuse().transformDamage()]);
}
