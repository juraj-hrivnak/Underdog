#modloaded pyrotech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.advancedmortars.Mortar;


Mortar.addRecipe(["iron", "stone"], <cuisine:food:4>, 4, [<ore:cropRice>]);
Mortar.addRecipe(["iron", "stone"], <cuisine:material:2>, 4, [<ore:dustCrudesalt>]);

val paste as string[][IIngredient] = {
    <ore:cropBellpepper>                : ["red_pepper"             , ""                    ],
    <ore:cropMelon>                     : ["melon"                  , ""                    ],
    <minecraft:carrot>                  : ["carrot"                 , ""                    ],
    <minecraft:potato>                  : ["potato"                 , ""                    ],
    <minecraft:golden_carrot>           : ["golden_carrot"          , ""                    ],
    <minecraft:fish:1>                  : ["fish"                   , ""                    ],

    <harvestcraft:tamarinditem>         : ["tamarind"               , ""                    ],
    <minecraft:fish>                    : ["fish"                   , ""                    ],
    <ore:cropBeet>                      : ["beetroot"               , ""                    ],
    <minecraft:golden_apple>            : ["golden_apple"           , "rare"                ],
    <minecraft:fish:3>                  : ["pufferfish"             , "pufferfish_poison"   ],
    <minecraft:golden_apple:1>          : ["golden_apple_enchanted" , "rare"                ],
    <harvestcraft:asparagusitem>        : ["asparagus"              , ""                    ],
    <harvestcraft:whitemushroomitem>    : ["mushroom"               , ""                    ],

    <ore:cropCucumber>                  : ["cucumber"               , ""                    ],
    <ore:cropOnion>                     : ["onion"                  , ""                    ],
    <ore:cropTurnip>                    : ["turnip"                 , ""                    ],
    <ore:cropLettuce>                   : ["lettuce"                , ""                    ],
    <ore:cropChestnut>                  : ["chestnut"               , ""                    ],
    <ore:cropSpinach>                   : ["spinach"                , ""                    ],
    <ore:listAllmuttonraw>              : ["mutton"                 , ""                    ],
    <ore:foodPickles>                   : ["pickled"                , ""                    ],

    <ore:listAllrabbitraw>              : ["rabbit"                 , ""                    ],
    <harvestcraft:broccoliitem>         : ["broccoli"               , ""                    ],
    <harvestcraft:rhubarbitem>          : ["rhubarb"                , ""                    ],
    <harvestcraft:radishitem>           : ["radish"                 , ""                    ],
    <ore:cropTomato>                    : ["tomato"                 , ""                    ],
    <minecraft:chorus_fruit>            : ["chorus_fruit"           , ""                    ],
    <harvestcraft:sweetpotatoitem>      : ["sweet_potato"           , ""                    ],
    <harvestcraft:waterchestnutitem>    : ["water_chestnut"         , ""                    ],

    <ore:foodMushroom>                  : ["mushroom"               , ""                    ],
    <harvestcraft:parsnipitem>          : ["parsnip"                , ""                    ],
    <ore:listAllbeefraw>                : ["beef"                   , ""                    ],
    <harvestcraft:caulifloweritem>      : ["cauliflower"            , ""                    ],
    <ore:listAllchickenraw>             : ["chicken"                , ""                    ],
    <harvestcraft:wintersquashitem>     : ["winter_squash"          , ""                    ],

    <ore:cropGarlic>                    : ["garlic"                 , ""                    ],
    <cuisine:crops:15> |
        <harvestcraft:bellpepperitem>   : ["green_pepper"           , ""                    ],
    <harvestcraft:celeryitem>           : ["celery"                 , ""                    ],
    <harvestcraft:peasitem>             : ["peas"                   , ""                    ],
    <ore:cropPeanut>                    : ["peanut"                 , ""                    ],
    <harvestcraft:zucchiniitem>         : ["zucchini"               , ""                    ],
    <ore:cropScallion>                  : ["scallion"               , ""                    ],
    <harvestcraft:rutabagaitem>         : ["rutabaga"               , ""                    ],

    <ore:cropLeek>                      : ["leek"                   , ""                    ],
    <minecraft:apple>                   : ["apple"                  , ""                    ],
    <ore:cropCabbage>                   : ["chinese_cabbage"        , ""                    ],
    <harvestcraft:seaweeditem>          : ["seaweed"                , ""                    ],
    <harvestcraft:okraitem>             : ["okra"                   , ""                    ],
    <ore:cropEggplant>                  : ["eggplant"               , ""                    ],
    <ore:listAllporkraw>                : ["pork"                   , ""                    ],
    <harvestcraft:artichokeitem>        : ["artichoke"              , ""                    ],

    <ore:cropBambooshoot>               : ["bamboo_shoot"           , ""                    ],
    <ore:cropBrusselsprout>             : ["brussel_sprout"         , ""                    ],
};

for input, output in paste {

    Mortar.addRecipe(["stone"], <cuisine:ingredient>.withTag({
        characteristics: [] as int[],
        effects: output[1],
        material: output[0],
        form: "PASTE",
        doneness: 0
    }), 2, [input]);

}


val mortars = [
    <advancedmortars:mortar>,
    <advancedmortars:mortar:2>,
    <advancedmortars:mortar:3>,
    <advancedmortars:mortar:4>,
    <advancedmortars:mortar:5>,
    <advancedmortars:mortar:6>
] as IItemStack[];
for i in mortars { rh(i); }
