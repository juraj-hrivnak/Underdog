#modloaded cuisine
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

import mods.cuisine.Mill;

// Mill Recipes
Mill.add(<ore:fertilizer>, null, <biomesoplenty:white_dye>, null);
Mill.add(<ore:gemLapis>, null, <biomesoplenty:blue_dye>, null);

// Crafting Recipes
// Fire Pit
recipes.removeShaped(<cuisine:fire_pit>);
recipes.addShapedMirrored(<cuisine:fire_pit>, 
    [[<ore:stickWood>,  <ore:rock>],
     [<ore:rock>,       <ore:rock>]]);

// Wooden Handle
recipes.removeShaped(<cuisine:material:1>);
recipes.addShapedMirrored(<cuisine:material:1>, [[<ore:stickWood>, <ore:stickWood>]]);


// Chopping Boards
var chopping_board_oak = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_spruce = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_birch = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_jungle = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_acacia = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log2", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_dark_oak = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "minecraft:log2", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_sacred_oak = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_0", Count: 1 as byte, Damage: 4 as short}}});
var chopping_board_cherry = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_0", Count: 1 as byte, Damage: 5 as short}}});
var chopping_board_umbran = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_0", Count: 1 as byte, Damage: 6 as short}}});
var chopping_board_fir = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_0", Count: 1 as byte, Damage: 7 as short}}});
var chopping_board_ethereal = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_1", Count: 1 as byte, Damage: 4 as short}}});
var chopping_board_magic = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_1", Count: 1 as byte, Damage: 5 as short}}});
var chopping_board_mangrove = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_1", Count: 1 as byte, Damage: 6 as short}}});
var chopping_board_palm = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_1", Count: 1 as byte, Damage: 7 as short}}});
var chopping_board_redwood = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_2", Count: 1 as byte, Damage: 4 as short}}});
var chopping_board_willow = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_2", Count: 1 as byte, Damage: 5 as short}}});
var chopping_board_pine = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_2", Count: 1 as byte, Damage: 6 as short}}});
var chopping_board_hellbark = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_2", Count: 1 as byte, Damage: 7 as short}}});
var chopping_board_jacaranda = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_3", Count: 1 as byte, Damage: 4 as short}}});
var chopping_board_mahogany = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_3", Count: 1 as byte, Damage: 5 as short}}});
var chopping_board_ebony = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_3", Count: 1 as byte, Damage: 6 as short}}});
var chopping_board_eucalyptus = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_3", Count: 1 as byte, Damage: 7 as short}}});
var chopping_board_giant_flower = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_4", Count: 1 as byte, Damage: 4 as short}}});
var chopping_board_dead_wood = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "biomesoplenty:log_4", Count: 1 as byte, Damage: 5 as short}}});
var chopping_board_larch = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.0", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_teak = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.0", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_fore_acacia = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.0", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_lime = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.0", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_chestnut = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.1", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_wenge = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.1", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_baobab = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.1", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_sequoia = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.1", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_kapok = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.2", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_fore_ebony = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.2", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_fore_mahogany = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.2", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_balsa = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.2", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_fore_willow = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.3", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_walnut = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.3", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_greenheart = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.3", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_fore_cherry = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.3", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_mahoe = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.4", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_poplar = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.4", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_date_palm = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.4", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_papaya = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.4", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_fore_pine = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.5", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_plum = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.5", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_maple = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.5", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_fore_citrus = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.5", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_giganteum = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.6", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_ipe = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.6", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_padauk = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.6", Count: 1 as byte, Damage: 2 as short}}});
var chopping_board_cocobolo = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.6", Count: 1 as byte, Damage: 3 as short}}});
var chopping_board_zebrawood = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "forestry:logs.7", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_olive = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "rustic:log", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_ironwood = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "rustic:log", Count: 1 as byte, Damage: 1 as short}}});
var chopping_board_pammaple = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "harvestcraft:pammaple", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_pampaperbark = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "harvestcraft:pampaperbark", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_pamcinnamon = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "harvestcraft:pamcinnamon", Count: 1 as byte, Damage: 0 as short}}});
var chopping_board_citrus = <cuisine:chopping_board>.withTag({BlockEntityTag: {cover: {id: "cuisine:log", Count: 1 as byte, Damage: 0 as short}}});

val choppingBoards = [chopping_board_oak, chopping_board_spruce, chopping_board_birch, chopping_board_jungle, chopping_board_acacia,
    chopping_board_dark_oak, chopping_board_sacred_oak, chopping_board_cherry, chopping_board_umbran, chopping_board_fir,
    chopping_board_ethereal, chopping_board_magic, chopping_board_mangrove, chopping_board_palm, chopping_board_redwood,
    chopping_board_willow, chopping_board_pine, chopping_board_hellbark, chopping_board_jacaranda, chopping_board_mahogany,
    chopping_board_ebony, chopping_board_eucalyptus, chopping_board_giant_flower, chopping_board_dead_wood, chopping_board_larch,
    chopping_board_teak, chopping_board_fore_acacia, chopping_board_lime, chopping_board_chestnut, chopping_board_wenge,
    chopping_board_baobab, chopping_board_sequoia, chopping_board_kapok, chopping_board_fore_ebony, chopping_board_fore_mahogany,
    chopping_board_balsa, chopping_board_fore_willow, chopping_board_walnut, chopping_board_greenheart, chopping_board_fore_cherry,
    chopping_board_mahoe, chopping_board_poplar, chopping_board_date_palm, chopping_board_papaya, chopping_board_fore_pine, chopping_board_plum,
    chopping_board_maple, chopping_board_fore_citrus, chopping_board_giganteum, chopping_board_ipe, chopping_board_padauk, chopping_board_cocobolo,
    chopping_board_zebrawood, chopping_board_olive, chopping_board_ironwood, chopping_board_pammaple, chopping_board_pampaperbark, chopping_board_pamcinnamon,
    chopping_board_citrus
] as IItemStack[];

for item in choppingBoards {
    recipes.removeShaped(item);
}

recipes.addShaped(chopping_board_oak, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=oak]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_spruce, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=spruce]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_birch, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=birch]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_jungle, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=jungle]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_acacia, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=acacia]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_dark_oak, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=dark_oak]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_sacred_oak, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=sacred_oak]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_cherry, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=cherry]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_umbran, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=umbran]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fir, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=fir]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_ethereal, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ethereal]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_magic, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=magic]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_mangrove, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mangrove]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_palm, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=palm]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_redwood, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=redwood]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_willow, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=willow]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_pine, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=pine]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_hellbark, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=hellbark]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_jacaranda, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=jacaranda]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_mahogany, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mahogany]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_ebony, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ebony]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_eucalyptus, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=eucalyptus]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_giant_flower, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:log_4[axis=y,variant=giant_flower]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_dead_wood, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:log_4[axis=y,variant=dead]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_larch, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=larch]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_teak, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=teak]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_acacia, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=acacia]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_lime, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=lime]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_chestnut, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=chestnut]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_wenge, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=wenge]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_baobab, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=baobab]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_sequoia, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=sequoia]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_kapok, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=kapok]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_ebony, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=ebony]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_mahogany, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=mahogany]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_balsa, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=balsa]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_willow, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=willow]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_walnut, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=walnut]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_greenheart, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=greenheart]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_cherry, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=cherry]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_mahoe, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=mahoe]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_poplar, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=poplar]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_date_palm, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=palm]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_papaya, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=papaya]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_pine, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=pine]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_plum, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=plum]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_maple, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=maple]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_fore_citrus, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=citrus]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_giganteum, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=giganteum]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_ipe, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=ipe]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_padauk, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=padauk]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_cocobolo, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=cocobolo]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_zebrawood, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=zebrawood]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_olive, [[<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=olive]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_ironwood, [[<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=ironwood]"}), <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_pammaple, [[<harvestcraft:pammaple>, <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_pampaperbark, [[<harvestcraft:pampaperbark>, <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_pamcinnamon, [[<harvestcraft:pamcinnamon>, <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);
recipes.addShaped(chopping_board_citrus, [[<cuisine:log>, <minecraft:iron_axe>.anyDamage().reuse().transformDamage(3)]]);

// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.0", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.0", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.0", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.0", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.1", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.1", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.1", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.1", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.2", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.2", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.2", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.2", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.3", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.3", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.3", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.3", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.4", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.4", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.4", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.4", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.5", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.5", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.5", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.5", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.6", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.6", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.6", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.6", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.fireproof.7", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.0", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.0", Count: 1 as byte, Damage: 1 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.0", Count: 1 as byte, Damage: 2 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.0", Count: 1 as byte, Damage: 3 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.1", Count: 1 as byte, Damage: 0 as short}}}));
// rh(<cuisine:chopping_board>.onlyWithTag({BlockEntityTag: {cover: {id: "forestry:logs.vanilla.fireproof.1", Count: 1 as byte, Damage: 1 as short}}}));