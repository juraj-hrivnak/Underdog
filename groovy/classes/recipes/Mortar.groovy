package classes.recipes

import com.cleanroommc.groovyscript.api.IIngredient

class Mortar {

    static void addPasteRecipe(IIngredient input, String... paste) {
        List<String> pastes = paste.toList()
        mods.advancedmortars.Mortar.recipeBuilder()
            .stone()
            .duration(2)
            .output(item('cuisine:ingredient').withNbt([
                characteristics: [],
                effects: pastes[1] ?: '',
                material: pastes[0],
                form: 'PASTE',
                doneness: 0
            ]))
            .input(input)
            .register()
    }

    static class PasteType {
        static final String RARE = 'rare'
        static final String PUFFERFISH_POISON = 'pufferfish_poison'

        static final String APPLE = 'apple'
        static final String ARTICHOKE = 'artichoke'
        static final String ASPARAGUS = 'asparagus'
        static final String BAMBOO_SHOOT = 'bamboo_shoot'
        static final String BEEF = 'beef'
        static final String BEETROOT = 'beetroot'
        static final String BROCCOLI = 'broccoli'
        static final String BRUSSEL_SPROUT = 'brussel_sprout'
        static final String CARROT = 'carrot'
        static final String CAULIFLOWER = 'cauliflower'
        static final String CELERY = 'celery'
        static final String CHESTNUT = 'chestnut'
        static final String CHICKEN = 'chicken'
        static final String CHINESE_CABBAGE = 'chinese_cabbage'
        static final String CHORUS_FRUIT = 'chorus_fruit'
        static final String CUCUMBER = 'cucumber'
        static final String EGGPLANT = 'eggplant'
        static final String FISH = 'fish'
        static final String GARLIC = 'garlic'
        static final String GOLDEN_APPLE = 'golden_apple'
        static final String GOLDEN_APPLE_ENCHANTED = 'golden_apple_enchanted'
        static final String GOLDEN_CARROT = 'golden_carrot'
        static final String GREEN_PEPPER = 'green_pepper'
        static final String LEEK = 'leek'
        static final String LETTUCE = 'lettuce'
        static final String MELON = 'melon'
        static final String MUSHROOM = 'mushroom'
        static final String MUTTON = 'mutton'
        static final String OKRA = 'okra'
        static final String ONION = 'onion'
        static final String PARSNIP = 'parsnip'
        static final String PEANUT = 'peanut'
        static final String PEAS = 'peas'
        static final String PICKLED = 'pickled'
        static final String PORK = 'pork'
        static final String POTATO = 'potato'
        static final String PUFFERFISH = 'pufferfish'
        static final String RABBIT = 'rabbit'
        static final String RADISH = 'radish'
        static final String RED_PEPPER = 'red_pepper'
        static final String RHUBARB = 'rhubarb'
        static final String RUTABAGA = 'rutabaga'
        static final String SCALLION = 'scallion'
        static final String SEAWEED = 'seaweed'
        static final String SPINACH = 'spinach'
        static final String SWEET_POTATO = 'sweet_potato'
        static final String TAMARIND = 'tamarind'
        static final String TOMATO = 'tomato'
        static final String TURNIP = 'turnip'
        static final String WATER_CHESTNUT = 'water_chestnut'
        static final String WINTER_SQUASH = 'winter_squash'
        static final String ZUCCHINI = 'zucchini'
    }

}
