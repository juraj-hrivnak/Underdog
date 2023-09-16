
import classes.Utils

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

Utils.hide(
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

ore('cropBellpepper').addPasteRecipe('red_pepper')
ore('cropMelon').addPasteRecipe('melon')
item('minecraft:carrot').addPasteRecipe('carrot')
item('minecraft:potato').addPasteRecipe('potato')
item('minecraft:golden_carrot').addPasteRecipe('golden_carrot')
item('minecraft:fish:1').addPasteRecipe('fish')

item('harvestcraft:tamarinditem').addPasteRecipe('tamarind')
item('minecraft:fish').addPasteRecipe('fish')
ore('cropBeet').addPasteRecipe('beetroot')
item('minecraft:golden_apple').addPasteRecipe('golden_apple', 'rare')
item('minecraft:fish:3').addPasteRecipe('pufferfish', 'pufferfish_poison')
item('minecraft:golden_apple:1').addPasteRecipe('golden_apple_enchanted', 'rare')
item('harvestcraft:asparagusitem').addPasteRecipe('asparagus')
item('harvestcraft:whitemushroomitem').addPasteRecipe('mushroom')

ore('cropCucumber').addPasteRecipe('cucumber')
ore('cropOnion').addPasteRecipe('onion')
ore('cropTurnip').addPasteRecipe('turnip')
ore('cropLettuce').addPasteRecipe('lettuce')
ore('cropChestnut').addPasteRecipe('chestnut')
ore('cropSpinach').addPasteRecipe('spinach')
ore('listAllmuttonraw').addPasteRecipe('mutton')
ore('foodPickles').addPasteRecipe('pickled')

ore('listAllrabbitraw').addPasteRecipe('rabbit')
item('harvestcraft:broccoliitem').addPasteRecipe('broccoli')
item('harvestcraft:rhubarbitem').addPasteRecipe('rhubarb')
item('harvestcraft:radishitem').addPasteRecipe('radish')
ore('cropTomato').addPasteRecipe('tomato')
item('minecraft:chorus_fruit').addPasteRecipe('chorus_fruit')
item('harvestcraft:sweetpotatoitem').addPasteRecipe('sweet_potato')
item('harvestcraft:waterchestnutitem').addPasteRecipe('water_chestnut')

ore('foodMushroom').addPasteRecipe('mushroom')
item('harvestcraft:parsnipitem').addPasteRecipe('parsnip')
ore('listAllbeefraw').addPasteRecipe('beef')
item('harvestcraft:caulifloweritem').addPasteRecipe('cauliflower')
ore('listAllchickenraw').addPasteRecipe('chicken')
item('harvestcraft:wintersquashitem').addPasteRecipe('winter_squash')

ore('cropGarlic').addPasteRecipe('garlic')
(item('cuisine:crops:15') | item('harvestcraft:bellpepperitem')).addPasteRecipe('green_pepper')
item('harvestcraft:celeryitem').addPasteRecipe('celery')
item('harvestcraft:peasitem').addPasteRecipe('peas')
ore('cropPeanut').addPasteRecipe('peanut')
item('harvestcraft:zucchiniitem').addPasteRecipe('zucchini')
ore('cropScallion').addPasteRecipe('scallion')
item('harvestcraft:rutabagaitem').addPasteRecipe('rutabaga')

ore('cropLeek').addPasteRecipe('leek')
item('minecraft:apple').addPasteRecipe('apple')
ore('cropCabbage').addPasteRecipe('chinese_cabbage')
ore('cropSeaweed').addPasteRecipe('seaweed')
item('harvestcraft:okraitem').addPasteRecipe('okra')
ore('cropEggplant').addPasteRecipe('eggplant')
ore('listAllporkraw').addPasteRecipe('pork')
item('harvestcraft:artichokeitem').addPasteRecipe('artichoke')

ore('cropBambooshoot').addPasteRecipe('bamboo_shoot')
ore('cropBrusselsprout').addPasteRecipe('brussel_sprout')
