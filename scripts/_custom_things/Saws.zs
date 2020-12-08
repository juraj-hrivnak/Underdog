#loader contenttweaker
#modloaded tconstruct
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemDestroySpeed;
import mods.contenttweaker.BlockState;


var wood_saw = VanillaFactory.createItem("wood_saw");
wood_saw.itemDestroySpeed = function(thisItem, blockState) {
    if (blockState == <block:dynamictrees:oakbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:oakbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:sprucebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:sprucebranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:birchbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:junglebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:junglebranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:acaciabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:darkoakbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictrees:darkoakbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:magicbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:umbranbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:umbranbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:firbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:firbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:cherrybranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:deadbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:jacarandabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:redwoodbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:redwoodbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:willowbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:hellbarkbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:pinebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:palmbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:mahoganybranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:mangrovebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:ebonybranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesbop:eucalyptusbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesphc:cinnamonbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesphc:maplebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesphc:paperbarkcutbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesphc:paperbarkbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesphc:palmbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:silverlimebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:silverlimebranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:walnutbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:walnutbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:chestnutbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:chestnutbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:cherrybranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:lemonbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:plumbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:maplebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:larchbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:bullpinebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:coastsequoiabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:teakbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:ipebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:ipebranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:kapokbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:kapokbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:ebonybranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:zebrawoodbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:zebrawoodbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:merantibranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:merantibranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:desertacaciabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:padaukbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:balsabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:cocobolobranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:wengebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:wengebranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:baobabbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:baobabbranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:mahoebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:willowbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:sipiribranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:sipiribranchx>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:papayabranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:palmbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:dynamictreesforestry:poplarbranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:rustic:olivebranch>) { return 6.0f; } else { return 1.0f; }
    if (blockState == <block:rustic:ironwoodbranch>) { return 6.0f; } else { return 1.0f; }
};

wood_saw.maxDamage = 204;
wood_saw.maxStackSize = 1;
wood_saw.toolClass = "axe";
wood_saw.toolLevel = 5;
wood_saw.register();

var stone_saw = VanillaFactory.createItem("stone_saw");
stone_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
stone_saw.maxDamage = 204;
stone_saw.maxStackSize = 1;
stone_saw.toolClass = "axe";
stone_saw.toolLevel = 5;
stone_saw.register();

var flint_saw = VanillaFactory.createItem("flint_saw");
flint_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
flint_saw.maxDamage = 204;
flint_saw.maxStackSize = 1;
flint_saw.toolClass = "axe";
flint_saw.toolLevel = 5;
flint_saw.register();

var cactus_saw = VanillaFactory.createItem("cactus_saw");
cactus_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
cactus_saw.maxDamage = 204;
cactus_saw.maxStackSize = 1;
cactus_saw.toolClass = "axe";
cactus_saw.toolLevel = 5;
cactus_saw.register();

var bone_saw = VanillaFactory.createItem("bone_saw");
bone_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
bone_saw.maxDamage = 204;
bone_saw.maxStackSize = 1;
bone_saw.toolClass = "axe";
bone_saw.toolLevel = 5;
bone_saw.register();

var obsidian_saw = VanillaFactory.createItem("obsidian_saw");
obsidian_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
obsidian_saw.maxDamage = 204;
obsidian_saw.maxStackSize = 1;
obsidian_saw.toolClass = "axe";
obsidian_saw.toolLevel = 5;
obsidian_saw.register();

var prismarine_saw = VanillaFactory.createItem("prismarine_saw");
prismarine_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
prismarine_saw.maxDamage = 204;
prismarine_saw.maxStackSize = 1;
prismarine_saw.toolClass = "axe";
prismarine_saw.toolLevel = 5;
prismarine_saw.register();

var endstone_saw = VanillaFactory.createItem("endstone_saw");
endstone_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
endstone_saw.maxDamage = 204;
endstone_saw.maxStackSize = 1;
endstone_saw.toolClass = "axe";
endstone_saw.toolLevel = 5;
endstone_saw.register();

var paper_saw = VanillaFactory.createItem("paper_saw");
paper_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
paper_saw.maxDamage = 204;
paper_saw.maxStackSize = 1;
paper_saw.toolClass = "axe";
paper_saw.toolLevel = 5;
paper_saw.register();

var sponge_saw = VanillaFactory.createItem("sponge_saw");
sponge_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
sponge_saw.maxDamage = 204;
sponge_saw.maxStackSize = 1;
sponge_saw.toolClass = "axe";
sponge_saw.toolLevel = 5;
sponge_saw.register();

var firewood_saw = VanillaFactory.createItem("firewood_saw");
firewood_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
firewood_saw.maxDamage = 204;
firewood_saw.maxStackSize = 1;
firewood_saw.toolClass = "axe";
firewood_saw.toolLevel = 5;
firewood_saw.register();

var iron_saw = VanillaFactory.createItem("iron_saw");
iron_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
iron_saw.maxDamage = 204;
iron_saw.maxStackSize = 1;
iron_saw.toolClass = "axe";
iron_saw.toolLevel = 5;
iron_saw.register();

var pigiron_saw = VanillaFactory.createItem("pigiron_saw");
pigiron_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
pigiron_saw.maxDamage = 204;
pigiron_saw.maxStackSize = 1;
pigiron_saw.toolClass = "axe";
pigiron_saw.toolLevel = 5;
pigiron_saw.register();

var knightslime_saw = VanillaFactory.createItem("knightslime_saw");
knightslime_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
knightslime_saw.maxDamage = 204;
knightslime_saw.maxStackSize = 1;
knightslime_saw.toolClass = "axe";
knightslime_saw.toolLevel = 5;
knightslime_saw.register();

var slime_saw = VanillaFactory.createItem("slime_saw");
slime_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
slime_saw.maxDamage = 204;
slime_saw.maxStackSize = 1;
slime_saw.toolClass = "axe";
slime_saw.toolLevel = 5;
slime_saw.register();

var blueslime_saw = VanillaFactory.createItem("blueslime_saw");
blueslime_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
blueslime_saw.maxDamage = 204;
blueslime_saw.maxStackSize = 1;
blueslime_saw.toolClass = "axe";
blueslime_saw.toolLevel = 5;
blueslime_saw.register();

var magmaslime_saw = VanillaFactory.createItem("magmaslime_saw");
magmaslime_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
magmaslime_saw.maxDamage = 204;
magmaslime_saw.maxStackSize = 1;
magmaslime_saw.toolClass = "axe";
magmaslime_saw.toolLevel = 5;
magmaslime_saw.register();

var netherrack_saw = VanillaFactory.createItem("netherrack_saw");
netherrack_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
netherrack_saw.maxDamage = 204;
netherrack_saw.maxStackSize = 1;
netherrack_saw.toolClass = "axe";
netherrack_saw.toolLevel = 5;
netherrack_saw.register();

var cobalt_saw = VanillaFactory.createItem("cobalt_saw");
cobalt_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
cobalt_saw.maxDamage = 204;
cobalt_saw.maxStackSize = 1;
cobalt_saw.toolClass = "axe";
cobalt_saw.toolLevel = 5;
cobalt_saw.register();

var ardite_saw = VanillaFactory.createItem("ardite_saw");
ardite_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
ardite_saw.maxDamage = 204;
ardite_saw.maxStackSize = 1;
ardite_saw.toolClass = "axe";
ardite_saw.toolLevel = 5;
ardite_saw.register();

var manyullyn_saw = VanillaFactory.createItem("manyullyn_saw");
manyullyn_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
manyullyn_saw.maxDamage = 204;
manyullyn_saw.maxStackSize = 1;
manyullyn_saw.toolClass = "axe";
manyullyn_saw.toolLevel = 5;
manyullyn_saw.register();

var copper_saw = VanillaFactory.createItem("copper_saw");
copper_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
copper_saw.maxDamage = 204;
copper_saw.maxStackSize = 1;
copper_saw.toolClass = "axe";
copper_saw.toolLevel = 5;
copper_saw.register();

var bronze_saw = VanillaFactory.createItem("bronze_saw");
bronze_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
bronze_saw.maxDamage = 204;
bronze_saw.maxStackSize = 1;
bronze_saw.toolClass = "axe";
bronze_saw.toolLevel = 5;
bronze_saw.register();

var lead_saw = VanillaFactory.createItem("lead_saw");
lead_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
lead_saw.maxDamage = 204;
lead_saw.maxStackSize = 1;
lead_saw.toolClass = "axe";
lead_saw.toolLevel = 5;
lead_saw.register();

var silver_saw = VanillaFactory.createItem("silver_saw");
silver_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
silver_saw.maxDamage = 204;
silver_saw.maxStackSize = 1;
silver_saw.toolClass = "axe";
silver_saw.toolLevel = 5;
silver_saw.register();

var electrum_saw = VanillaFactory.createItem("electrum_saw");
electrum_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
electrum_saw.maxDamage = 204;
electrum_saw.maxStackSize = 1;
electrum_saw.toolClass = "axe";
electrum_saw.toolLevel = 5;
electrum_saw.register();

var steel_saw = VanillaFactory.createItem("steel_saw");
steel_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
steel_saw.maxDamage = 204;
steel_saw.maxStackSize = 1;
steel_saw.toolClass = "axe";
steel_saw.toolLevel = 5;
steel_saw.register();

var treatedwood_saw = VanillaFactory.createItem("treatedwood_saw");
treatedwood_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
treatedwood_saw.maxDamage = 204;
treatedwood_saw.maxStackSize = 1;
treatedwood_saw.toolClass = "axe";
treatedwood_saw.toolLevel = 5;
treatedwood_saw.register();

var constantan_saw = VanillaFactory.createItem("constantan_saw");
constantan_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
constantan_saw.maxDamage = 204;
constantan_saw.maxStackSize = 1;
constantan_saw.toolClass = "axe";
constantan_saw.toolLevel = 5;
constantan_saw.register();

var boron_saw = VanillaFactory.createItem("boron_saw");
boron_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
boron_saw.maxDamage = 204;
boron_saw.maxStackSize = 1;
boron_saw.toolClass = "axe";
boron_saw.toolLevel = 5;
boron_saw.register();

var tough_saw = VanillaFactory.createItem("tough_saw");
tough_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
tough_saw.maxDamage = 204;
tough_saw.maxStackSize = 1;
tough_saw.toolClass = "axe";
tough_saw.toolLevel = 5;
tough_saw.register();

var hard_carbon_saw = VanillaFactory.createItem("hard_carbon_saw");
hard_carbon_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
hard_carbon_saw.maxDamage = 204;
hard_carbon_saw.maxStackSize = 1;
hard_carbon_saw.toolClass = "axe";
hard_carbon_saw.toolLevel = 5;
hard_carbon_saw.register();

var boron_nitride_saw = VanillaFactory.createItem("boron_nitride_saw");
boron_nitride_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
boron_nitride_saw.maxDamage = 204;
boron_nitride_saw.maxStackSize = 1;
boron_nitride_saw.toolClass = "axe";
boron_nitride_saw.toolLevel = 5;
boron_nitride_saw.register();

var thorium_saw = VanillaFactory.createItem("thorium_saw");
thorium_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
thorium_saw.maxDamage = 204;
thorium_saw.maxStackSize = 1;
thorium_saw.toolClass = "axe";
thorium_saw.toolLevel = 5;
thorium_saw.register();

var uranium_saw = VanillaFactory.createItem("uranium_saw");
uranium_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
uranium_saw.maxDamage = 204;
uranium_saw.maxStackSize = 1;
uranium_saw.toolClass = "axe";
uranium_saw.toolLevel = 5;
uranium_saw.register();

var magnesium_saw = VanillaFactory.createItem("magnesium_saw");
magnesium_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
magnesium_saw.maxDamage = 204;
magnesium_saw.maxStackSize = 1;
magnesium_saw.toolClass = "axe";
magnesium_saw.toolLevel = 5;
magnesium_saw.register();

var chocolate_saw = VanillaFactory.createItem("chocolate_saw");
chocolate_saw.itemDestroySpeed = function(thisItem, blockState) {
    return 6.0f; };
chocolate_saw.maxDamage = 204;
chocolate_saw.maxStackSize = 1;
chocolate_saw.toolClass = "axe";
chocolate_saw.toolLevel = 5;
chocolate_saw.register();