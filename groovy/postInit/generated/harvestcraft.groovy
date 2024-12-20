
// Dough
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('dustSalt')
)

// Turkish Delight
item('harvestcraft:turkishdelightitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('cropOrange'), ore('cropVanillabean'), ore('cropPistachio')
)

// Juicer
item('harvestcraft:juiceritem').tweakRecipe(
    [ore('stones'), item('minecraft:stone_pressure_plate')]
)

// Hot Sauce
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('itemSalt')
)

// Soy Sauce
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Taffy
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Soft Pretzel
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Vegemite
item('harvestcraft:vegemiteitem').tweakRecipe(
    ore('toolPot'), ore('listAllsugar'), ore('cropBarley'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('cropSpiceleaf')
)

// Market
item('harvestcraft:market').tweakRecipe(
    [ore('lumber'), item('minecraft:wool'), ore('lumber')],
    [item('minecraft:wool'), item('minecraft:emerald'), item('minecraft:wool')],
    [ore('lumber'), item('minecraft:wool'), ore('lumber')]
)

// Miso Soup
item('harvestcraft:misosoupitem').tweakRecipe(
    ore('toolPot'), ore('foodFirmtofu'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('cropScallion')
)

// Steamed Peas
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Oyster Sauce
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('foodSalt')
)

// Hoisin Sauce
(item('harvestcraft:hoisinsauceitem') * 9).tweakRecipe(
    ore('toolSaucepan'), ore('cropSweetpotato'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('cropSoybean'), ore('cropSesame'), ore('foodVinegar'), ore('cropGarlic'), ore('cropChilipepper')
)

// Bubble Tea
item('harvestcraft:bubbleteaitem').tweakRecipe(
    ore('toolPot'), ore('foodFlour'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('cropTea')
)

// Egg Tart
item('harvestcraft:eggtartitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('listAllegg'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllmilk')
)

// Oyster Sauce
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('itemSalt')
)

// Cutting Board
item('harvestcraft:cuttingboarditem').tweakRecipe(
    [item('minecraft:brick'), null, null],
    [null, ore('stickWood'), null],
    [null, null, ore('lumber')]
)

// Steamed Peas
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Soy Sauce
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Taffy
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Shipping Bin
item('harvestcraft:shippingbin').tweakRecipe(
    [ore('lumber'), item('minecraft:log'), ore('lumber')],
    [item('minecraft:log'), item('minecraft:emerald'), item('minecraft:log')],
    [ore('lumber'), item('minecraft:log'), ore('lumber')]
)

// Soft Pretzel
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Mochi
item('harvestcraft:mochiitem').tweakRecipe(
    ore('toolMortarandpestle'), ore('cropRice'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Cracker
item('harvestcraft:crackeritem').tweakRecipe(
    ore('toolBakeware'), ore('foodFlour'), ore('foodOliveoil'), ore('foodSalt'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Soft Pretzel
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Brioche Bun
(item('harvestcraft:briochebunitem') * 3).tweakRecipe(
    ore('toolBakeware'), ore('foodFlour'), ore('listAllegg'), ore('foodButter'), ore('listAllmilk'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllheavycream'), ore('listAllsugar')
)

// Gumbo
item('harvestcraft:gumboitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSausage'), ore('cropTomato'), ore('foodCrabraw'), ore('foodHotsauce'), ore('foodShrimpraw'), ore('cropSpiceleaf'), ore('listAllveggie')
)

// Jellied Eel
item('harvestcraft:jelliedeelitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodEelraw'), ore('foodShrimpraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('foodGroundnutmeg')
)

// Marshmallows
item('harvestcraft:marshmellowsitem').tweakRecipe(
    ore('toolPot'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllegg')
)

// Water Filter
item('harvestcraft:waterfilter').tweakRecipe(
    [item('minecraft:iron_bars'), item('minecraft:iron_bars'), item('minecraft:iron_bars')],
    [item('minecraft:iron_bars'), ore('stones'), item('minecraft:iron_bars')],
    [item('minecraft:iron_bars'), item('minecraft:iron_bars'), item('minecraft:iron_bars')]
)

// Salt
item('harvestcraft:saltitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Hot Sauce
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('foodSalt')
)

// Sauerbraten
item('harvestcraft:sauerbratenitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllmeatraw'), ore('foodVinegar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('cropSpiceleaf'), ore('cropPotato')
)

// Lychee Tea
item('harvestcraft:lycheeteaitem').tweakRecipe(
    ore('toolPot'), ore('cropLychee'), ore('cropTea'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Steamed Spinach
item('harvestcraft:steamedspinachitem').tweakRecipe(
    ore('toolPot'), ore('cropSpinach'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Grits
item('harvestcraft:gritsitem').tweakRecipe(
    ore('toolPot'), ore('foodCornmeal'), ore('listAllmilk'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Steamed Peas
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Cobblestone Cobbler
item('harvestcraft:cobblestonecobbleritem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks')
)

// Mixing Bowl
item('harvestcraft:mixingbowlitem').tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Hot Sauce
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('dustSalt')
)

// Tortilla
item('harvestcraft:tortillaitem').tweakRecipe(
    ore('toolSkillet'), ore('foodCornmeal'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Dandelion Tea
item('harvestcraft:dandelionteaitem').tweakRecipe(
    ore('toolPot'), ore('cropTea'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), item('minecraft:dye', 11)
)

// Dough
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('foodSalt')
)

// Water Trap
item('harvestcraft:watertrap').tweakRecipe(
    [ore('stickWood'), item('minecraft:fishing_rod'), ore('stickWood')],
    [ore('string'), ore('chestWood'), ore('string')],
    [ore('stickWood'), ore('string'), ore('stickWood')]
)

// Oyster Sauce
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('dustSalt')
)

// Cotton Candy
item('harvestcraft:cottoncandyitem').tweakRecipe(
    ore('toolMixingbowl'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('cropCotton'), item('minecraft:dye'), item('minecraft:paper')
)

// Taffy
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Ground Trap
item('harvestcraft:groundtrap').tweakRecipe(
    [ore('stickWood'), item('minecraft:trapdoor'), ore('stickWood')],
    [ore('string'), ore('chestWood'), ore('string')],
    [ore('stickWood'), ore('string'), ore('stickWood')]
)

// Mob Soup
item('harvestcraft:mobsoupitem').tweakRecipe(
    ore('toolPot'), item('minecraft:bone'), item('minecraft:rotten_flesh'), item('minecraft:fermented_spider_eye'), item('mekanism:controlcircuit', 2)
)

// Mushroom Ketchup
(item('harvestcraft:mushroomketchupitem') * 5).tweakRecipe(
    ore('toolPot'), ore('listAllmushroom'), ore('foodVinegar'), ore('cropSpiceleaf'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem'))
)

// Mortar and Pestle
item('harvestcraft:mortarandpestleitem').tweakRecipe(
    [ore('stones'), ore('stickWood'), ore('stones')],
    [null, ore('stones'), null]
)

// Soy Sauce
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Apiary
item('harvestcraft:apiary').tweakRecipe(
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')],
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')],
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')]
)

// Dough
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_stone').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_wood').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('pyrotech:bucket_clay').withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('itemSalt')
)
