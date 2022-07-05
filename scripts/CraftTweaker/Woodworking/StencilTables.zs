
#priority -102
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val lumbersAndStencilTables = {

    // Vanilla
    <contenttweaker:lumber_vanilla_oak>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}),
    <contenttweaker:lumber_vanilla_spruce>      : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 1 as short}}),
    <contenttweaker:lumber_vanilla_birch>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 2 as short}}),
    <contenttweaker:lumber_vanilla_jungle>      : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 3 as short}}),
    <contenttweaker:lumber_vanilla_acacia>      : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 4 as short}}),
    <contenttweaker:lumber_vanilla_dark_oak>    : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 5 as short}}),

    // Biomes O Plenty
    <contenttweaker:lumber_sacred_oak>          : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 0 as short}}),
    <contenttweaker:lumber_cherry>              : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 1 as short}}),
    <contenttweaker:lumber_umbran>              : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 2 as short}}),
    <contenttweaker:lumber_fir>                 : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 3 as short}}),
    <contenttweaker:lumber_ethereal>            : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 4 as short}}),
    <contenttweaker:lumber_magic>               : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 5 as short}}),
    <contenttweaker:lumber_mangrove>            : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 6 as short}}),
    <contenttweaker:lumber_palm>                : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 7 as short}}),
    <contenttweaker:lumber_redwood>             : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 8 as short}}),
    <contenttweaker:lumber_willow>              : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 9 as short}}),
    <contenttweaker:lumber_pine>                : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 10 as short}}),
    <contenttweaker:lumber_hellbark>            : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 11 as short}}),
    <contenttweaker:lumber_jacaranda>           : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 12 as short}}),
    <contenttweaker:lumber_mahogany>            : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 13 as short}}),
    <contenttweaker:lumber_ebony>               : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 14 as short}}),
    <contenttweaker:lumber_eucalyptus>          : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "biomesoplenty:planks_0", Count: 1 as byte, Damage: 15 as short}}),

    // Rustic
    <contenttweaker:lumber_planks_olive>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "rustic:planks", Count: 1 as byte, Damage: 0 as short}}),
    <contenttweaker:lumber_planks_ironwood>     : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "rustic:planks", Count: 1 as byte, Damage: 1 as short}}),

    // Forestry
    <contenttweaker:lumber_planks.larch>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 0 as short}}),
    <contenttweaker:lumber_planks.teak>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 1 as short}}),
    <contenttweaker:lumber_planks.acacia>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 2 as short}}),
    <contenttweaker:lumber_planks.lime>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 3 as short}}),
    <contenttweaker:lumber_planks.chestnut>     : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 4 as short}}),
    <contenttweaker:lumber_planks.wenge>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 5 as short}}),
    <contenttweaker:lumber_planks.baobab>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 6 as short}}),
    <contenttweaker:lumber_planks.sequoia>      : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 7 as short}}),
    <contenttweaker:lumber_planks.kapok>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 8 as short}}),
    <contenttweaker:lumber_planks.ebony>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 9 as short}}),
    <contenttweaker:lumber_planks.mahogany>     : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 10 as short}}),
    <contenttweaker:lumber_planks.balsa>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 11 as short}}),
    <contenttweaker:lumber_planks.willow>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 12 as short}}),
    <contenttweaker:lumber_planks.walnut>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 13 as short}}),
    <contenttweaker:lumber_planks.greenheart>   : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 14 as short}}),
    <contenttweaker:lumber_planks.cherry>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.0", Count: 1 as byte, Damage: 15 as short}}),
    <contenttweaker:lumber_planks.mahoe>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 0 as short}}),
    <contenttweaker:lumber_planks.poplar>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 1 as short}}),
    <contenttweaker:lumber_planks.palm>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 2 as short}}),
    <contenttweaker:lumber_planks.papaya>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 3 as short}}),
    <contenttweaker:lumber_planks.pine>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 4 as short}}),
    <contenttweaker:lumber_planks.plum>         : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 5 as short}}),
    <contenttweaker:lumber_planks.maple>        : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 6 as short}}),
    <contenttweaker:lumber_planks.citrus>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 7 as short}}),
    <contenttweaker:lumber_planks.giganteum>    : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 8 as short}}),
    <contenttweaker:lumber_planks.ipe>          : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 9 as short}}),
    <contenttweaker:lumber_planks.padauk>       : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 10 as short}}),
    <contenttweaker:lumber_planks.cocobolo>     : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 11 as short}}),
    <contenttweaker:lumber_planks.zebrawood>    : <tconstruct:tooltables:1>.withTag({textureBlock: {id: "forestry:planks.1", Count: 1 as byte, Damage: 12 as short}})

} as IItemStack[IItemStack];

recipes.remove(<tconstruct:tooltables:1>);

val woodenNail = <contenttweaker:nail_wooden>;
val ironNail = <contenttweaker:nail_iron>;

for lumber, stencilTable in lumbersAndStencilTables {

	recipes.addShaped(stencilTable,
       [[<tconstruct:pattern>],
        [lumber              ]]);

}
