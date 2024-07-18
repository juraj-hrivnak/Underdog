
import classes.Utils
import classes.recipes.Mortar
import classes.recipes.Mortar.*

item('advancedmortars:mortar', 1).tweakRecipe(
    '  s',
    'ror',
    ' r '
).with(
    s: ore('stickWood'),
    r: ore('rocks'),
    o: item('pyrotech:material', 10)
)

ore('toolMortarandpestle').add(item('advancedmortars:mortar', 1))

Utils.purge(
    item('advancedmortars:mortar'),
    item('advancedmortars:mortar:2'),
    item('advancedmortars:mortar:3'),
    item('advancedmortars:mortar:4'),
    item('advancedmortars:mortar:5'),
    item('advancedmortars:mortar:6')
)

mods.advancedmortars.Mortar.recipeBuilder()
    .stone()
    .duration(4)
    .output(item('cuisine:food:4'))
    .input(ore('cropRice'))
    .register()

mods.advancedmortars.Mortar.recipeBuilder()
    .stone()
    .duration(4)
    .output(item('cuisine:material:2'))
    .input(ore('dustCrudesalt'))
    .register()

// Apple Paste
Mortar.addPasteRecipe(item('minecraft:apple'), PasteType.APPLE)

// Artichoke Paste
Mortar.addPasteRecipe(item('harvestcraft:artichokeitem'), PasteType.ARTICHOKE)

// Asparagus Paste
Mortar.addPasteRecipe(item('harvestcraft:asparagusitem'), PasteType.ASPARAGUS)

// Bamboo Shoot Paste
Mortar.addPasteRecipe(ore('cropBambooshoot'), PasteType.BAMBOO_SHOOT)

// Beef Paste
Mortar.addPasteRecipe(ore('listAllbeefraw'), PasteType.BEEF)

// Beetroot Paste
Mortar.addPasteRecipe(ore('cropBeet'), PasteType.BEETROOT)

// Broccoli Paste
Mortar.addPasteRecipe(item('harvestcraft:broccoliitem'), PasteType.BROCCOLI)

// Brussel Sprout Paste
Mortar.addPasteRecipe(ore('cropBrusselsprout'), PasteType.BRUSSEL_SPROUT)

// Carrot Paste
Mortar.addPasteRecipe(item('minecraft:carrot'), PasteType.CARROT)

// Cauliflower Paste
Mortar.addPasteRecipe(item('harvestcraft:caulifloweritem'), PasteType.CAULIFLOWER)

// Celery Paste
Mortar.addPasteRecipe(item('harvestcraft:celeryitem'), PasteType.CELERY)

// Chestnut Paste
Mortar.addPasteRecipe(ore('cropChestnut'), PasteType.CHESTNUT)

// Chicken Paste
Mortar.addPasteRecipe(ore('listAllchickenraw'), PasteType.CHICKEN)

// Chinese Cabbage Paste
Mortar.addPasteRecipe(ore('cropCabbage'), PasteType.CHINESE_CABBAGE)

// Chorus Fruit Paste
Mortar.addPasteRecipe(item('minecraft:chorus_fruit'), PasteType.CHORUS_FRUIT)

// Cucumber Paste
Mortar.addPasteRecipe(ore('cropCucumber'), PasteType.CUCUMBER)

// Eggplant Paste
Mortar.addPasteRecipe(ore('cropEggplant'), PasteType.EGGPLANT)

// Enchanted Golden Apple Paste
Mortar.addPasteRecipe(item('minecraft:golden_apple', 1), PasteType.GOLDEN_APPLE_ENCHANTED, PasteType.RARE)

// Fish Paste
Mortar.addPasteRecipe(item('minecraft:fish'), PasteType.FISH)
Mortar.addPasteRecipe(item('minecraft:fish', 1), PasteType.FISH)

// Pufferfish Paste
Mortar.addPasteRecipe(item('minecraft:fish', 3), PasteType.PUFFERFISH, PasteType.PUFFERFISH_POISON)

// Garlic Paste
Mortar.addPasteRecipe(ore('cropGarlic'), PasteType.GARLIC)

// Golden Apple Paste
Mortar.addPasteRecipe(item('minecraft:golden_apple'), PasteType.GOLDEN_APPLE, PasteType.RARE)

// Golden Carrot Paste
Mortar.addPasteRecipe(item('minecraft:golden_carrot'), PasteType.GOLDEN_CARROT)

// Green Pepper Paste
Mortar.addPasteRecipe((item('cuisine:crops', 15) | item('harvestcraft:bellpepperitem')), PasteType.GREEN_PEPPER)

// Leek Paste
Mortar.addPasteRecipe(ore('cropLeek'), PasteType.LEEK)

// Lettuce Paste
Mortar.addPasteRecipe(ore('cropLettuce'), PasteType.LETTUCE)

// Melon Paste
Mortar.addPasteRecipe(ore('cropMelon'), PasteType.MELON)

// Mushroom Paste
Mortar.addPasteRecipe(item('harvestcraft:whitemushroomitem'), PasteType.MUSHROOM)
Mortar.addPasteRecipe(ore('foodMushroom'), PasteType.MUSHROOM)

// Mutton Paste
Mortar.addPasteRecipe(ore('listAllmuttonraw'), PasteType.MUTTON)

// Okra Paste
Mortar.addPasteRecipe(item('harvestcraft:okraitem'), PasteType.OKRA)

// Onion Paste
Mortar.addPasteRecipe(ore('cropOnion'), PasteType.ONION)

// Parsnip Paste
Mortar.addPasteRecipe(item('harvestcraft:parsnipitem'), PasteType.PARSNIP)

// Peanut Paste
Mortar.addPasteRecipe(ore('cropPeanut'), PasteType.PEANUT)

// Peas Paste
Mortar.addPasteRecipe(item('harvestcraft:peasitem'), PasteType.PEAS)

// Pickled Paste
Mortar.addPasteRecipe(ore('foodPickles'), PasteType.PICKLED)

// Pork Paste
Mortar.addPasteRecipe(ore('listAllporkraw'), PasteType.PORK)

// Potato Paste
Mortar.addPasteRecipe(item('minecraft:potato'), PasteType.POTATO)

// Rabbit Paste
Mortar.addPasteRecipe(ore('listAllrabbitraw'), PasteType.RABBIT)

// Radish Paste
Mortar.addPasteRecipe(item('harvestcraft:radishitem'), PasteType.RADISH)

// Rhubarb Paste
Mortar.addPasteRecipe(item('harvestcraft:rhubarbitem'), PasteType.RHUBARB)

// Rutabaga Paste
Mortar.addPasteRecipe(item('harvestcraft:rutabagaitem'), PasteType.RUTABAGA)

// Scallion Paste
Mortar.addPasteRecipe(ore('cropScallion'), PasteType.SCALLION)

// Seaweed Paste
Mortar.addPasteRecipe(ore('cropSeaweed'), PasteType.SEAWEED)

// Spinach Paste
Mortar.addPasteRecipe(ore('cropSpinach'), PasteType.SPINACH)

// Sweet Potato Paste
Mortar.addPasteRecipe(item('harvestcraft:sweetpotatoitem'), PasteType.SWEET_POTATO)

// Tamarind Paste
Mortar.addPasteRecipe(item('harvestcraft:tamarinditem'), PasteType.TAMARIND)

// Tomato Paste
Mortar.addPasteRecipe(ore('cropTomato'), PasteType.TOMATO)

// Turnip Paste
Mortar.addPasteRecipe(ore('cropTurnip'), PasteType.TURNIP)

// Water Chestnut Paste
Mortar.addPasteRecipe(item('harvestcraft:waterchestnutitem'), PasteType.WATER_CHESTNUT)

// Winter Squash Paste
Mortar.addPasteRecipe(item('harvestcraft:wintersquashitem'), PasteType.WINTER_SQUASH)

// Zucchini Paste
Mortar.addPasteRecipe(item('harvestcraft:zucchiniitem'), PasteType.ZUCCHINI)

// Red Pepper Paste
Mortar.addPasteRecipe(ore('cropBellpepper'), PasteType.RED_PEPPER)
