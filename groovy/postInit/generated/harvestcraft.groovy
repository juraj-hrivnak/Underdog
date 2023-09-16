
// Water Trap (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:watertrap').tweakRecipe(
    [ore('stickWood'), item('minecraft:fishing_rod'), ore('stickWood')],
    [ore('string'), ore('chestWood'), ore('string')],
    [ore('stickWood'), ore('string'), ore('stickWood')]
)

// Water Filter (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:waterfilter').tweakRecipe(
    [item('minecraft:iron_bars'), item('minecraft:iron_bars'), item('minecraft:iron_bars')],
    [item('minecraft:iron_bars'), ore('stones'), item('minecraft:iron_bars')],
    [item('minecraft:iron_bars'), item('minecraft:iron_bars'), item('minecraft:iron_bars')]
)

// Vegemite (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:vegemiteitem').tweakRecipe(
    ore('toolPot'), ore('listAllsugar'), ore('cropBarley'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('cropSpiceleaf')
)

// Turkish Delight (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:turkishdelightitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('cropOrange'), ore('cropVanillabean'), ore('cropPistachio')
)

// Tortilla (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:tortillaitem').tweakRecipe(
    ore('toolSkillet'), ore('foodCornmeal'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Mortar and Pestle (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:mortarandpestleitem').tweakRecipe(
    [ore('stones'), ore('stickWood'), ore('stones')],
    [null, ore('stones'), null]
)

// Mixing Bowl (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:mixingbowlitem').tweakRecipe(
    [ore('lumber'), ore('stickWood'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Juicer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:juiceritem').tweakRecipe(
    [ore('stones'), item('minecraft:stone_pressure_plate'), null]
)

// Cutting Board (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:cuttingboarditem').tweakRecipe(
    [item('minecraft:brick'), null, null],
    [null, ore('stickWood'), null],
    [null, null, ore('lumber')]
)

// Taffy (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Taffy (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Taffy (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:taffyitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Steamed Spinach (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:steamedspinachitem').tweakRecipe(
    ore('toolPot'), ore('cropSpinach'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Steamed Peas (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Steamed Peas (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Steamed Peas (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:steamedpeasitem').tweakRecipe(
    ore('toolPot'), ore('cropPeas'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Soy Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Soy Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Soy Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:soysauceitem').tweakRecipe(
    ore('toolJuicer'), ore('cropSoybean'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Soft Pretzel (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Soft Pretzel (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSalt')
)

// Soft Pretzel (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:softpretzelitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('dustSalt')
)

// Shipping Bin (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:shippingbin').tweakRecipe(
    [ore('lumber'), item('minecraft:log'), ore('lumber')],
    [item('minecraft:log'), item('minecraft:emerald'), item('minecraft:log')],
    [ore('lumber'), item('minecraft:log'), ore('lumber')]
)

// Sauerbraten (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:sauerbratenitem').tweakRecipe(
    ore('toolSaucepan'), ore('listAllmeatraw'), ore('foodVinegar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('cropSpiceleaf'), ore('cropPotato')
)

// Salt (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:saltitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Oyster Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('itemSalt')
)

// Oyster Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('foodSalt')
)

// Oyster Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:oystersauceitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodOysterraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('dustSalt')
)

// Mushroom Ketchup (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:mushroomketchupitem') * 5).tweakRecipe(
    ore('toolPot'), ore('listAllmushroom'), ore('foodVinegar'), ore('cropSpiceleaf'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Mochi (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:mochiitem').tweakRecipe(
    ore('toolMortarandpestle'), ore('cropRice'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Mob Soup (class net.minecraft.item.crafting.ShapelessRecipes)
item('harvestcraft:mobsoupitem').tweakRecipe(
    ore('toolPot'), item('minecraft:bone'), item('minecraft:rotten_flesh'), item('minecraft:fermented_spider_eye'), item('mekanism:controlcircuit', 2)
)

// Miso Soup (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:misosoupitem').tweakRecipe(
    ore('toolPot'), ore('foodFirmtofu'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('cropScallion')
)

// Marshmallows (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:marshmellowsitem').tweakRecipe(
    ore('toolPot'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllegg')
)

// Market (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:market').tweakRecipe(
    [ore('lumber'), item('minecraft:wool'), ore('lumber')],
    [item('minecraft:wool'), item('minecraft:emerald'), item('minecraft:wool')],
    [ore('lumber'), item('minecraft:wool'), ore('lumber')]
)

// Lychee Tea (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:lycheeteaitem').tweakRecipe(
    ore('toolPot'), ore('cropLychee'), ore('cropTea'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Jellied Eel (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:jelliedeelitem').tweakRecipe(
    ore('toolSaucepan'), ore('foodEelraw'), ore('foodShrimpraw'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('foodGroundnutmeg')
)

// Hot Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('itemSalt')
)

// Hot Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('foodSalt')
)

// Hot Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:hotsauceitem') * 6).tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodVinegar'), ore('cropChilipepper'), ore('cropGarlic'), ore('dustSalt')
)

// Hoisin Sauce (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:hoisinsauceitem') * 9).tweakRecipe(
    ore('toolSaucepan'), ore('cropSweetpotato'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllsugar'), ore('cropSoybean'), ore('cropSesame'), ore('foodVinegar'), ore('cropGarlic'), ore('cropChilipepper')
)

// Gumbo (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:gumboitem').tweakRecipe(
    ore('toolPot'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodSausage'), ore('cropTomato'), ore('foodCrabraw'), ore('foodHotsauce'), ore('foodShrimpraw'), ore('cropSpiceleaf'), ore('listAllveggie')
)

// Ground Trap (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:groundtrap').tweakRecipe(
    [ore('stickWood'), item('minecraft:trapdoor'), ore('stickWood')],
    [ore('string'), ore('chestWood'), ore('string')],
    [ore('stickWood'), ore('string'), ore('stickWood')]
)

// Grits (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:gritsitem').tweakRecipe(
    ore('toolPot'), ore('foodCornmeal'), ore('listAllmilk'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('itemSalt')
)

// Egg Tart (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:eggtartitem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('listAllegg'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllmilk')
)

// Dough (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('itemSalt')
)

// Dough (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('foodSalt')
)

// Dough (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:doughitem').tweakRecipe(
    ore('toolMixingbowl'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('foodFlour'), ore('dustSalt')
)

// Dandelion Tea (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:dandelionteaitem').tweakRecipe(
    ore('toolPot'), ore('cropTea'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), item('minecraft:dye', 11)
)

// Cracker (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:crackeritem').tweakRecipe(
    ore('toolBakeware'), ore('foodFlour'), ore('foodOliveoil'), ore('foodSalt'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)

// Cotton Candy (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:cottoncandyitem').tweakRecipe(
    ore('toolMixingbowl'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('cropCotton'), item('minecraft:dye'), item('minecraft:paper')
)

// Cobblestone Cobbler (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:cobblestonecobbleritem').tweakRecipe(
    ore('toolBakeware'), ore('foodDough'), ore('foodButter'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks'), ore('rocks')
)

// Bubble Tea (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('harvestcraft:bubbleteaitem').tweakRecipe(
    ore('toolPot'), ore('foodFlour'), ore('listAllsugar'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('cropTea')
)

// Brioche Bun (class net.minecraftforge.oredict.ShapelessOreRecipe)
(item('harvestcraft:briochebunitem') * 3).tweakRecipe(
    ore('toolBakeware'), ore('foodFlour'), ore('listAllegg'), ore('foodButter'), ore('listAllmilk'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem')), ore('listAllheavycream'), ore('listAllsugar')
)

// Apiary (class net.minecraftforge.oredict.ShapedOreRecipe)
item('harvestcraft:apiary').tweakRecipe(
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')],
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')],
    [ore('lumber'), item('minecraft:item_frame'), ore('lumber')]
)
