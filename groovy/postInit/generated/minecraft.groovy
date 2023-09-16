
// Yellow Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 4).tweakRecipe(
    [ore('woolYellow'), ore('woolYellow'), ore('woolYellow')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Wooden Sword (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:wooden_sword').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('stickWood')]
)

// White Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed').tweakRecipe(
    [ore('woolWhite'), ore('woolWhite'), ore('woolWhite')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// White Bed (class net.minecraftforge.oredict.ShapedOreRecipe)
item('minecraft:bed').tweakRecipe(
    [ore('blockWool'), ore('blockWool'), ore('blockWool')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Tripwire Hook (class net.minecraft.item.crafting.ShapedRecipes)
(item('minecraft:tripwire_hook') * 2).tweakRecipe(
    [ore('ingotIron'), ore('stickWood'), ore('lumber')]
)

// Stone Pressure Plate (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:stone_pressure_plate').tweakRecipe(
    [ore('stones'), ore('stones'), null]
)

// Button (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:stone_button').tweakRecipe(
    [ore('stones'), null, null]
)

// Sign (class net.minecraft.item.crafting.ShapedRecipes)
(item('minecraft:sign') * 3).tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [null, ore('stickWood'), null]
)

// Shield (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:shield').tweakRecipe(
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [null, ore('lumber'), null]
)

// Redstone Repeater (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:repeater').tweakRecipe(
    [item('minecraft:redstone_torch'), ore('dustRedstone'), item('minecraft:redstone_torch')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Redstone Repeater (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:repeater').tweakRecipe(
    [ore('dustRedstone'), null, ore('dustRedstone')],
    [ore('stickWood'), ore('dustRedstone'), ore('stickWood')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Red Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 14).tweakRecipe(
    [ore('woolRed'), ore('woolRed'), ore('woolRed')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Purple Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 10).tweakRecipe(
    [ore('woolPurple'), ore('woolPurple'), ore('woolPurple')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Piston (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:piston').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('rocks'), ore('ingotIron'), ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Pink Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 6).tweakRecipe(
    [ore('woolPink'), ore('woolPink'), ore('woolPink')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Orange Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 1).tweakRecipe(
    [ore('woolOrange'), ore('woolOrange'), ore('woolOrange')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Observer (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:observer').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('dustRedstone'), ore('dustRedstone'), item('minecraft:quartz')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Note Block (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:noteblock').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('dustRedstone'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Moss Stone (class net.minecraft.item.crafting.ShapelessRecipes)
item('minecraft:mossy_cobblestone').tweakRecipe(
    ore('rocks'), item('minecraft:vine')
)

// Magenta Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 2).tweakRecipe(
    [ore('woolMagenta'), ore('woolMagenta'), ore('woolMagenta')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Lime Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 5).tweakRecipe(
    [ore('woolLime'), ore('woolLime'), ore('woolLime')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Light Gray Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 8).tweakRecipe(
    [ore('woolLightGray'), ore('woolLightGray'), ore('woolLightGray')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Light Blue Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 3).tweakRecipe(
    [ore('woolLightBlue'), ore('woolLightBlue'), ore('woolLightBlue')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Jukebox (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:jukebox').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('gemDiamond'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Green Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 13).tweakRecipe(
    [ore('woolGreen'), ore('woolGreen'), ore('woolGreen')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Gray Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 7).tweakRecipe(
    [ore('woolGray'), ore('woolGray'), ore('woolGray')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// End Crystal (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:end_crystal').tweakRecipe(
    [ore('blockGlassColorless'), ore('blockGlassColorless'), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('mekanism:controlcircuit', 3), ore('blockGlassColorless')],
    [ore('blockGlassColorless'), item('minecraft:ghast_tear'), ore('blockGlassColorless')]
)

// Dropper (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:dropper').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('rocks'), null, ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Dispenser (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:dispenser').tweakRecipe(
    [ore('rocks'), ore('rocks'), ore('rocks')],
    [ore('rocks'), item('minecraft:bow'), ore('rocks')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Cyan Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 9).tweakRecipe(
    [ore('woolCyan'), ore('woolCyan'), ore('woolCyan')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Redstone Comparator (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:comparator').tweakRecipe(
    [null, item('minecraft:redstone_torch'), null],
    [item('minecraft:redstone_torch'), item('minecraft:quartz'), item('minecraft:redstone_torch')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Redstone Comparator (class net.minecraftforge.oredict.ShapedOreRecipe)
item('minecraft:comparator').tweakRecipe(
    [null, item('minecraft:redstone_torch'), null],
    [item('minecraft:redstone_torch'), item('minecraft:quartz'), item('minecraft:redstone_torch')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Brown Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 12).tweakRecipe(
    [ore('woolBrown'), ore('woolBrown'), ore('woolBrown')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Brewing Stand (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:brewing_stand').tweakRecipe(
    [null, item('minecraft:blaze_rod'), null],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Bowl (class net.minecraft.item.crafting.ShapedRecipes)
(item('minecraft:bowl') * 4).tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [null, ore('lumber'), null]
)

// Blue Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 11).tweakRecipe(
    [ore('woolBlue'), ore('woolBlue'), ore('woolBlue')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Black Bed (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:bed', 15).tweakRecipe(
    [ore('woolBlack'), ore('woolBlack'), ore('woolBlack')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Furnace (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:furnace').tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), item('pyrotech:furnace_core'), ore('stones')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Crafting Table (class com.codetaylor.mc.pyrotech.modules.core.recipe.CraftingTableRecipe)
item('minecraft:crafting_table').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('pyrotech:crafting_table_template'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class net.minecraft.item.crafting.ShapedRecipes)
item('minecraft:chest_minecart').tweakRecipe(
    [ore('ingotIron'), ore('chestWood'), ore('ingotIron')],
    [ore('ingotIron'), ore('ingotIron'), ore('ingotIron')]
)

// Minecart with Chest (class net.minecraftforge.oredict.ShapedOreRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Minecart with Chest (class com.cleanroommc.groovyscript.compat.vanilla.ShapedCraftingRecipe)
item('minecraft:chest_minecart').tweakRecipe(
    [item('minecraft:iron_ingot'), ore('chestWood'), item('minecraft:iron_ingot')],
    [item('minecraft:iron_ingot'), item('minecraft:iron_ingot'), item('minecraft:iron_ingot')]
)

// Stone Bricks (class crafttweaker.mc1120.recipes.MCRecipeShaped)
(item('minecraft:stonebrick') * 4).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('stones'), null, null]
)

// Cobblestone Slab (class crafttweaker.mc1120.recipes.MCRecipeShaped)
(item('minecraft:stone_slab', 3) * 4).tweakRecipe(
    [ore('rocks'), ore('rocks'), null]
)
