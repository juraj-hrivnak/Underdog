
//MOD_LOADED pyrotech

import classes.Utils

mods.pyrotech.pit_kiln.removeAll()
mods.pyrotech.stone_kiln.removeAll()
mods.pyrotech.brick_kiln.removeAll()

def potteryRecipe = { input, output ->

    if (input instanceof ItemStack) {
        input.removeFurnaceRecipe()
    }

    mods.pyrotech.pit_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(2400)
        .failureChance(0.33F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material', 6), item('pyrotech:material', 7))
        .name(Utils.generateRegistryName(output))
        .register()

    mods.pyrotech.stone_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(600)
        .failureChance(0.16F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material', 6), item('pyrotech:material', 7))
        .name(Utils.generateRegistryName(output))
        .register()

    mods.pyrotech.brick_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(600)
        .failureChance(0F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material', 6), item('pyrotech:material', 7))
        .name(Utils.generateRegistryName(output))
        .register()

}

def recipe = { input, output ->

    if (input instanceof ItemStack) {
        input.removeFurnaceRecipe()
    }

    mods.pyrotech.pit_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(2400)
        .failureChance(0.33F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material') * 2, item('pyrotech:material') * 3)
        .name(Utils.generateRegistryName(output))
        .register()

    mods.pyrotech.stone_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(600)
        .failureChance(0.16F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material') * 2, item('pyrotech:material') * 3)
        .name(Utils.generateRegistryName(output))
        .register()

    mods.pyrotech.brick_kiln.recipeBuilder()
        .input(input)
        .output(output)
        .burnTime(600)
        .failureChance(0F)
        .failureOutput(item('pyrotech:material'), item('pyrotech:material') * 2, item('pyrotech:material') * 3)
        .name(Utils.generateRegistryName(output))
        .register()

}

potteryRecipe(item('minecraft:clay'), item('minecraft:hardened_clay'))
potteryRecipe(item('pyrotech:bucket_clay_unfired'), item('pyrotech:bucket_clay'))
potteryRecipe(item('pyrotech:material', 24), item('minecraft:brick'))
potteryRecipe(item('pyrotech:material', 9), item('pyrotech:material', 5))

potteryRecipe(item('minecraft:stained_hardened_clay'), item('minecraft:white_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 1), item('minecraft:orange_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 2), item('minecraft:magenta_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 3), item('minecraft:light_blue_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 4), item('minecraft:yellow_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 5), item('minecraft:lime_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 6), item('minecraft:pink_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 7), item('minecraft:gray_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 8), item('minecraft:silver_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 9), item('minecraft:cyan_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 10), item('minecraft:purple_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 11), item('minecraft:blue_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 12), item('minecraft:brown_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 13), item('minecraft:green_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 14), item('minecraft:red_glazed_terracotta'))
potteryRecipe(item('minecraft:stained_hardened_clay', 15), item('minecraft:black_glazed_terracotta'))

potteryRecipe(item('contenttweaker:unfired_lv_connector'), item('immersiveengineering:connector'))
potteryRecipe(item('contenttweaker:unfired_mv_connector'), item('immersiveengineering:connector', 2))
potteryRecipe(item('contenttweaker:unfired_hv_connector'), item('immersiveengineering:connector', 4))
potteryRecipe(item('contenttweaker:unfired_lv_relay'), item('immersiveengineering:connector', 1))
potteryRecipe(item('contenttweaker:unfired_mv_relay'), item('immersiveengineering:connector', 3))

potteryRecipe(item('contenttweaker:unfired_pot'), item('rustic:vase'))

potteryRecipe(ore('blockMud'), item('minecraft:dirt'))
potteryRecipe(ore('ballMud'), item('biomesoplenty:mud_brick'))
potteryRecipe(item('dawnoftimebuilder:grey_clay_tile'), item('dawnoftimebuilder:grey_tile'))



recipe(item('minecraft:stone_slab', 3), item('minecraft:stone_slab'))
recipe(item('pyrotech:rock', 7), item('pyrotech:material', 15))
recipe(item('minecraft:cobblestone'), item('minecraft:stone'))
recipe(item('divergentunderground:andesite_cobblestone'), item('minecraft:stone', 5))
recipe(item('divergentunderground:diorite_cobblestone'), item('minecraft:stone', 3))
recipe(item('divergentunderground:granite_cobblestone'), item('minecraft:stone', 1))
recipe(item('divergentunderground:quark_limestone_cobblestone'), item('quark:limestone'))
recipe(item('divergentunderground:quark_marble_cobblestone'), item('quark:marble'))
recipe(ore('sand'), item('minecraft:glass'))
recipe(ore('tropicraftSand'), item('minecraft:glass'))
recipe(item('divergentunderground:rock_quark_limestone'), item('pyrotech:material', 22))
recipe(ore('slagHeap'), item('pyrotech:slag_glass'))
recipe(item('cuisine:bamboo'), item('cuisine:material', 6))
recipe(ore('meteorite'), item('appliedenergistics2:smooth_sky_stone_block'))
recipe(item('minecraft:book'), item('cookingforblockheads:recipe_book', 1))
recipe(item('cookingforblockheads:recipe_book'), item('cookingforblockheads:recipe_book', 1))
recipe(ore('blockCactus'), item('minecraft:dye', 2))
recipe(ore('plantTinycactus'), item('minecraft:dye', 2))
recipe(item('industrialforegoing:dryrubber'), item('industrialforegoing:plastic'))
