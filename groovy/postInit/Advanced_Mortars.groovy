
import classes.Utils
import classes.recipes.Mortar

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

Utils.rmh(
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
Mortar.addPasteRecipe(item('minecraft:apple'), Mortar.PasteType.APPLE)

// Artichoke Paste
Mortar.addPasteRecipe(item('harvestcraft:artichokeitem'), Mortar.PasteType.ARTICHOKE)

// Asparagus Paste
Mortar.addPasteRecipe(item('harvestcraft:asparagusitem'), Mortar.PasteType.ASPARAGUS)

// Bamboo Shoot Paste
Mortar.addPasteRecipe(ore('cropBambooshoot'), Mortar.PasteType.BAMBOO_SHOOT)

// Beef Paste
Mortar.addPasteRecipe(ore('listAllbeefraw'), Mortar.PasteType.BEEF)

// Beetroot Paste
Mortar.addPasteRecipe(ore('cropBeet'), Mortar.PasteType.BEETROOT)

// Broccoli Paste
Mortar.addPasteRecipe(item('harvestcraft:broccoliitem'), Mortar.PasteType.BROCCOLI)

// Brussel Sprout Paste
Mortar.addPasteRecipe(ore('cropBrusselsprout'), Mortar.PasteType.BRUSSEL_SPROUT)

// Carrot Paste
Mortar.addPasteRecipe(item('minecraft:carrot'), Mortar.PasteType.CARROT)

// Cauliflower Paste
Mortar.addPasteRecipe(item('harvestcraft:caulifloweritem'), Mortar.PasteType.CAULIFLOWER)

// Celery Paste
Mortar.addPasteRecipe(item('harvestcraft:celeryitem'), Mortar.PasteType.CELERY)

// Chestnut Paste
Mortar.addPasteRecipe(ore('cropChestnut'), Mortar.PasteType.CHESTNUT)

// Chicken Paste
Mortar.addPasteRecipe(ore('listAllchickenraw'), Mortar.PasteType.CHICKEN)

// Chinese Cabbage Paste
Mortar.addPasteRecipe(ore('cropCabbage'), Mortar.PasteType.CHINESE_CABBAGE)

// Chorus Fruit Paste
Mortar.addPasteRecipe(item('minecraft:chorus_fruit'), Mortar.PasteType.CHORUS_FRUIT)

// Cucumber Paste
Mortar.addPasteRecipe(ore('cropCucumber'), Mortar.PasteType.CUCUMBER)

// Eggplant Paste
Mortar.addPasteRecipe(ore('cropEggplant'), Mortar.PasteType.EGGPLANT)

// Enchanted Golden Apple Paste
Mortar.addPasteRecipe(item('minecraft:golden_apple', 1), Mortar.PasteType.GOLDEN_APPLE_ENCHANTED, Mortar.PasteType.RARE)

// Fish Paste
Mortar.addPasteRecipe(item('minecraft:fish'), Mortar.PasteType.FISH)
Mortar.addPasteRecipe(item('minecraft:fish', 1), Mortar.PasteType.FISH)

// Pufferfish Paste
Mortar.addPasteRecipe(item('minecraft:fish', 3), Mortar.PasteType.PUFFERFISH, Mortar.PasteType.PUFFERFISH_POISON)

// Garlic Paste
Mortar.addPasteRecipe(ore('cropGarlic'), Mortar.PasteType.GARLIC)

// Golden Apple Paste
Mortar.addPasteRecipe(item('minecraft:golden_apple'), Mortar.PasteType.GOLDEN_APPLE, Mortar.PasteType.RARE)

// Golden Carrot Paste
Mortar.addPasteRecipe(item('minecraft:golden_carrot'), Mortar.PasteType.GOLDEN_CARROT)

// Green Pepper Paste
Mortar.addPasteRecipe((item('cuisine:crops', 15) | item('harvestcraft:bellpepperitem')), Mortar.PasteType.GREEN_PEPPER)

// Leek Paste
Mortar.addPasteRecipe(ore('cropLeek'), Mortar.PasteType.LEEK)

// Lettuce Paste
Mortar.addPasteRecipe(ore('cropLettuce'), Mortar.PasteType.LETTUCE)

// Melon Paste
Mortar.addPasteRecipe(ore('cropMelon'), Mortar.PasteType.MELON)

// Mushroom Paste
Mortar.addPasteRecipe(item('harvestcraft:whitemushroomitem'), Mortar.PasteType.MUSHROOM)
Mortar.addPasteRecipe(ore('foodMushroom'), Mortar.PasteType.MUSHROOM)

// Mutton Paste
Mortar.addPasteRecipe(ore('listAllmuttonraw'), Mortar.PasteType.MUTTON)

// Okra Paste
Mortar.addPasteRecipe(item('harvestcraft:okraitem'), Mortar.PasteType.OKRA)

// Onion Paste
Mortar.addPasteRecipe(ore('cropOnion'), Mortar.PasteType.ONION)

// Parsnip Paste
Mortar.addPasteRecipe(item('harvestcraft:parsnipitem'), Mortar.PasteType.PARSNIP)

// Peanut Paste
Mortar.addPasteRecipe(ore('cropPeanut'), Mortar.PasteType.PEANUT)

// Peas Paste
Mortar.addPasteRecipe(item('harvestcraft:peasitem'), Mortar.PasteType.PEAS)

// Pickled Paste
Mortar.addPasteRecipe(ore('foodPickles'), Mortar.PasteType.PICKLED)

// Pork Paste
Mortar.addPasteRecipe(ore('listAllporkraw'), Mortar.PasteType.PORK)

// Potato Paste
Mortar.addPasteRecipe(item('minecraft:potato'), Mortar.PasteType.POTATO)

// Rabbit Paste
Mortar.addPasteRecipe(ore('listAllrabbitraw'), Mortar.PasteType.RABBIT)

// Radish Paste
Mortar.addPasteRecipe(item('harvestcraft:radishitem'), Mortar.PasteType.RADISH)

// Rhubarb Paste
Mortar.addPasteRecipe(item('harvestcraft:rhubarbitem'), Mortar.PasteType.RHUBARB)

// Rutabaga Paste
Mortar.addPasteRecipe(item('harvestcraft:rutabagaitem'), Mortar.PasteType.RUTABAGA)

// Scallion Paste
Mortar.addPasteRecipe(ore('cropScallion'), Mortar.PasteType.SCALLION)

// Seaweed Paste
Mortar.addPasteRecipe(ore('cropSeaweed'), Mortar.PasteType.SEAWEED)

// Spinach Paste
Mortar.addPasteRecipe(ore('cropSpinach'), Mortar.PasteType.SPINACH)

// Sweet Potato Paste
Mortar.addPasteRecipe(item('harvestcraft:sweetpotatoitem'), Mortar.PasteType.SWEET_POTATO)

// Tamarind Paste
Mortar.addPasteRecipe(item('harvestcraft:tamarinditem'), Mortar.PasteType.TAMARIND)

// Tomato Paste
Mortar.addPasteRecipe(ore('cropTomato'), Mortar.PasteType.TOMATO)

// Turnip Paste
Mortar.addPasteRecipe(ore('cropTurnip'), Mortar.PasteType.TURNIP)

// Water Chestnut Paste
Mortar.addPasteRecipe(item('harvestcraft:waterchestnutitem'), Mortar.PasteType.WATER_CHESTNUT)

// Winter Squash Paste
Mortar.addPasteRecipe(item('harvestcraft:wintersquashitem'), Mortar.PasteType.WINTER_SQUASH)

// Zucchini Paste
Mortar.addPasteRecipe(item('harvestcraft:zucchiniitem'), Mortar.PasteType.ZUCCHINI)

// Red Pepper Paste
Mortar.addPasteRecipe(ore('cropBellpepper'), Mortar.PasteType.RED_PEPPER)
