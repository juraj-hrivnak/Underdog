#priority 15
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


val lumbers as string[string] = {

    // Unfired things
    unfired_pot                   : "unfired_pot"                    ,
    unfired_lv_connector          : "unfired_lv_connector"           ,
    unfired_mv_connector          : "unfired_mv_connector"           ,
    unfired_hv_connector          : "unfired_hv_connector"           ,

    // Crafting Table
    table_top                     : "table_top"                      ,

    // Nails
    cast                          : "cast_nail"                      ,
    mold                          : "mold_nail"                      ,
    woodenNail                    : "nail_wooden"                    ,
    ironNail                      : "nail_iron"                      ,

    // Vannila
    oakLumber                     : "lumber_vanilla_oak"             ,
    spruceLumber                  : "lumber_vanilla_spruce"          ,
    birchLumber                   : "lumber_vanilla_birch"           ,
    jungleLumber                  : "lumber_vanilla_jungle"          ,
    acaciaLumber                  : "lumber_vanilla_acacia"          ,
    dark_oakLumber                : "lumber_vanilla_dark_oak"        ,

    // Biomes O Plenty
    sacred_oakLumber              : "lumber_sacred_oak"              ,
    cherryLumber                  : "lumber_cherry"                  ,
    umbranLumber                  : "lumber_umbran"                  ,
    firLumber                     : "lumber_fir"                     ,
    etherealLumber                : "lumber_ethereal"                ,
    magicLumber                   : "lumber_magic"                   ,
    mangroveLumber                : "lumber_mangrove"                ,
    palmLumber                    : "lumber_palm"                    ,
    redwoodLumber                 : "lumber_redwood"                 ,
    willowLumber                  : "lumber_willow"                  ,
    pineLumber                    : "lumber_pine"                    ,
    hellbarkLumber                : "lumber_hellbark"                ,
    jacarandaLumber               : "lumber_jacaranda"               ,
    mahoganyLumber                : "lumber_mahogany"                ,
    ebonyLumber                   : "lumber_ebony"                   ,
    eucalyptusLumber              : "lumber_eucalyptus"              ,

    // Rustic
    oliveLumber                   : "lumber_planks_olive"            ,
    ironwoodLumber                : "lumber_planks_ironwood"         ,

    // Forestry
    larchLumber                   : "lumber_planks.larch"            ,
    teakLumber                    : "lumber_planks.teak"             ,
    acaciaLumberF                 : "lumber_planks.acacia"           ,
    limeLumber                    : "lumber_planks.lime"             ,
    chestnutLumber                : "lumber_planks.chestnut"         ,
    wengeLumber                   : "lumber_planks.wenge"            ,
    baobabLumber                  : "lumber_planks.baobab"           ,
    sequoiaLumber                 : "lumber_planks.sequoia"          ,
    kapokLumber                   : "lumber_planks.kapok"            ,
    ebonyLumberF                  : "lumber_planks.ebony"            ,
    mahoganyLumberF               : "lumber_planks.mahogany"         ,
    balsaLumber                   : "lumber_planks.balsa"            ,
    willowLumberF                 : "lumber_planks.willow"           ,
    walnutLumber                  : "lumber_planks.walnut"           ,
    greenheartLumber              : "lumber_planks.greenheart"       ,
    cherryLumberF                 : "lumber_planks.cherry"           ,
    mahoeLumber                   : "lumber_planks.mahoe"            ,
    poplarLumber                  : "lumber_planks.poplar"           ,
    palmLumberF                   : "lumber_planks.palm"             ,
    papayaLumber                  : "lumber_planks.papaya"           ,
    pineLumberF                   : "lumber_planks.pine"             ,
    plumLumber                    : "lumber_planks.plum"             ,
    mapleLumber                   : "lumber_planks.maple"            ,
    citrusLumber                  : "lumber_planks.citrus"           ,
    giganteumLumber               : "lumber_planks.giganteum"        ,
    ipeLumber                     : "lumber_planks.ipe"              ,
    padaukLumber                  : "lumber_planks.padauk"           ,
    cocoboloLumber                : "lumber_planks.cocobolo"         ,
    zebrawoodLumber               : "lumber_planks.zebrawood"        ,

    // Cuisine
    cuisineCitrusLumber           : "cuisine_citrus_lumber"          ,

    // Rustic Painted Wood
    paintedWoodWhiteLumber        : "painted_wood_white_lumber"      ,
    paintedWoodOrangeLumber       : "painted_wood_orange_lumber"     ,
    paintedWoodMagentaLumber      : "painted_wood_magenta_lumber"    ,
    paintedWoodLightBlueLumber    : "painted_wood_light_blue_lumber" ,
    paintedWoodYellowLumber       : "painted_wood_yellow_lumber"     ,
    paintedWoodLimeLumber         : "painted_wood_lime_lumber"       ,
    paintedWoodPinkLumber         : "painted_wood_pink_lumber"       ,
    paintedWoodGrayLumber         : "painted_wood_gray_lumber"       ,
    paintedWoodSilverLumber       : "painted_wood_silver_lumber"     ,
    paintedWoodCyanLumber         : "painted_wood_cyan_lumber"       ,
    paintedWoodPurpleLumber       : "painted_wood_purple_lumber"     ,
    paintedWoodBlueLumber         : "painted_wood_blue_lumber"       ,
    paintedWoodBrownLumber        : "painted_wood_brown_lumber"      ,
    paintedWoodGreenLumber        : "painted_wood_green_lumber"      ,
    paintedWoodRedLumber          : "painted_wood_red_lumber"        ,
    paintedWoodBlackLumber        : "painted_wood_black_lumber"      ,

    // Immersive Engineering
    treatedWoodLumber             : "treated_wood_lumber",

    // Pyrotech
    tarredWoodLumber              : "tarred_lumber"

};

for x, y in lumbers {
    var x = VanillaFactory.createItem(y);
    x.register();
}