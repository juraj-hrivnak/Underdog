#modloaded cuisine
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;
import mods.cuisine.Mill;


/* ------
    Mill  */
Mill.add(<ore:fertilizer>, null, <biomesoplenty:white_dye>, null);
Mill.add(<ore:gemLapis>, null, <biomesoplenty:blue_dye>, null);


/* ----------
    Crafting  */

// Mill
recipes.removeShaped(<cuisine:mill>);
recipes.addShaped(<cuisine:mill>, [
    [<ore:handleWood>],
    [<ore:stone>]
]);

// Fire Pit
recipes.removeShaped(<cuisine:fire_pit>);
recipes.addShapedMirrored(<cuisine:fire_pit>, [
    [<ore:stickWood>, <ore:rocksHard>],
    [<ore:rocksHard>, <ore:rocksHard>]
]);

// Wooden Handle
recipes.removeShaped(<cuisine:material:1>);
recipes.addShapedMirrored(<cuisine:material:1>, [[<ore:stickWood>, <ore:stickWood>]]);

// Chopping Boards mess :P
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

recipes.addShaped(chopping_board_oak, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=oak]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_spruce, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=spruce]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_birch, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=birch]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_jungle, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=jungle]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_acacia, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=acacia]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_dark_oak, [[<microblockcbe:microblock:2>.withTag({mat: "minecraft:planks[variant=dark_oak]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_sacred_oak, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=sacred_oak]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_cherry, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=cherry]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_umbran, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=umbran]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fir, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=fir]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_ethereal, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ethereal]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_magic, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=magic]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_mangrove, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mangrove]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_palm, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=palm]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_redwood, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=redwood]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_willow, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=willow]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_pine, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=pine]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_hellbark, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=hellbark]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_jacaranda, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=jacaranda]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_mahogany, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=mahogany]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_ebony, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=ebony]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_eucalyptus, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:planks_0[variant=eucalyptus]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_giant_flower, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:log_4[axis=y,variant=giant_flower]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_dead_wood, [[<microblockcbe:microblock:2>.withTag({mat: "biomesoplenty:log_4[axis=y,variant=dead]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_larch, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=larch]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_teak, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=teak]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_acacia, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=acacia]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_lime, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=lime]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_chestnut, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=chestnut]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_wenge, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=wenge]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_baobab, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=baobab]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_sequoia, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=sequoia]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_kapok, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=kapok]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_ebony, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=ebony]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_mahogany, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=mahogany]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_balsa, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=balsa]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_willow, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=willow]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_walnut, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=walnut]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_greenheart, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=greenheart]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_cherry, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.0[variant=cherry]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_mahoe, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=mahoe]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_poplar, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=poplar]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_date_palm, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=palm]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_papaya, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=papaya]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_pine, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=pine]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_plum, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=plum]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_maple, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=maple]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_fore_citrus, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=citrus]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_giganteum, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=giganteum]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_ipe, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=ipe]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_padauk, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=padauk]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_cocobolo, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=cocobolo]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_zebrawood, [[<microblockcbe:microblock:2>.withTag({mat: "forestry:planks.1[variant=zebrawood]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_olive, [[<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=olive]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_ironwood, [[<microblockcbe:microblock:2>.withTag({mat: "rustic:planks[variant=ironwood]"}), <ore:axes>]]);
recipes.addShaped(chopping_board_pammaple, [[<harvestcraft:pammaple>, <ore:axes>]]);
recipes.addShaped(chopping_board_pampaperbark, [[<harvestcraft:pampaperbark>, <ore:axes>]]);
recipes.addShaped(chopping_board_pamcinnamon, [[<harvestcraft:pamcinnamon>, <ore:axes>]]);
recipes.addShaped(chopping_board_citrus, [[<cuisine:log>, <ore:axes>]]);