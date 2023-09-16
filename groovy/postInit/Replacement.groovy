// DEBUG_ONLY

/**
 * ^ This file is used to generate groovy code for recipes.
 * ^ Should be run only in dev enviroment.
 */

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.compat.vanilla.CraftingRecipe
import com.cleanroommc.groovyscript.compat.vanilla.ICraftingRecipe
import com.cleanroommc.groovyscript.helper.ingredient.IngredientHelper
import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient
import net.minecraft.item.ItemStack
import net.minecraft.item.crafting.IRecipe
import net.minecraft.item.crafting.Ingredient
import net.minecraftforge.oredict.OreIngredient
import net.minecraftforge.oredict.OreDictionary
import net.minecraftforge.fluids.FluidStack
import net.minecraftforge.common.crafting.IShapedRecipe
import net.minecraftforge.fml.common.registry.ForgeRegistries

def oreDictsToReplace = [:]
def fluidStacksToReplace = [:]
def itemStacksToReplace = [:]

IIngredient allSpringWater = (item('minecraft:water_bucket')
    | item('pyrotech:bucket_refractory')   .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_stone')        .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_wood')         .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('pyrotech:bucket_clay')         .withNbt(['fluids': ['FluidName': 'water', 'Amount': 1000]])
    | item('harvestcraft:freshwateritem'))

// Torch
itemStacksToReplace[item('minecraft:torch')] = item('burningtorch:burningtorch')

// Chest
itemStacksToReplace[item('minecraft:chest')] = ore('chestWood')

// Ender Pearl, Ender Eye
itemStacksToReplace[item('minecraft:ender_pearl')] = item('mekanism:controlcircuit', 2)
itemStacksToReplace[item('minecraft:ender_eye')] = item('mekanism:controlcircuit', 3)

// Lumber
oreDictsToReplace.put(ore('plankWood'), ore('lumber'))

// Cobblestone, Stone
oreDictsToReplace.put(ore('cobblestone'), ore('rocks'))
oreDictsToReplace.put(ore('stone'), ore('stones'))

// Spring Water
oreDictsToReplace.put(ore('listAllwater'), allSpringWater)


def modifiedRecipes = []

new File("groovy/postInit/generated").deleteDir()

/**
 * Forge Ingredient variant
 */
asGroovyCode = { Ingredient input ->
    String result = null
    if (input instanceof OreIngredient) {
        result = IngredientHelper.asGroovyCode(input.oreDict, false)
    } else if (input instanceof FluidStack) {
        result = IngredientHelper.asGroovyCode(input, false)
    } else if ((Object) input instanceof Ingredient) {
        if (input.matchingStacks.length == 1) {
            result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)
        } else if (input.matchingStacks.length > 1) {
            y = '('
            input.matchingStacks.eachWithIndex { x, i ->
                y += IngredientHelper.asGroovyCode(x, false, false)
                if (i + 1 < input.matchingStacks.length) {
                    y += ' | '
                }
            }
            y += ')'
            result = y
        }
    }
    return result
}

/**
 * GroovyScript's IIngredient variant
 */
asGroovyCode = { IIngredient input ->
    String result = null
    if (input instanceof OreDictIngredient) {
        result = IngredientHelper.asGroovyCode(input.oreDict, false)
    } else if (input instanceof FluidStack) {
        result = IngredientHelper.asGroovyCode(input, false)
    } else if (input instanceof IIngredient) {
        if (input.matchingStacks.length == 1) {
            result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)
        } else if (input.matchingStacks.length > 1) {
            y = '('
            input.matchingStacks.eachWithIndex { x, i ->
                y += IngredientHelper.asGroovyCode(x, false, false)
                if (i + 1 < input.matchingStacks.length) {
                    y += ' | '
                }
            }
            y += ')'
            result = y
        }
    }
    return result
}

replaceIngredient = { IRecipe recipe, Ingredient input ->
    String result = null
    if (input instanceof OreIngredient) {
        result = IngredientHelper.asGroovyCode(input.oreDict, false)

        for (ore in oreDictsToReplace) {
            if (input.oreDict == ore.key.oreDict) {
                modifiedRecipes << recipe
                result = asGroovyCode(ore.value)
            }
        }
    } else if (input instanceof FluidStack) {
        result = IngredientHelper.asGroovyCode(input, false)

        for (fluid in fluidStacksToReplace) {
            if (input == fluid.key) {
                modifiedRecipes << recipe
                result = asGroovyCode(fluid.value)
            }
        }
    } else if ((Object) input instanceof Ingredient) {
        if (input.matchingStacks.length > 0) {
            result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)

            for (item in itemStacksToReplace) {
                if (ItemStack.areItemsEqual(input.matchingStacks[0], item.key)) {
                    modifiedRecipes << recipe
                    result = asGroovyCode(item.value)
                }
            }
        }
    }
    return result
}

println('Generating replacement recipes!')

crafting.streamRecipes().each { recipe ->
    if (recipe !instanceof com.cleanroommc.groovyscript.registry.DummyRecipe
            && recipe.registryName != null
            && !recipe.ingredients.isEmpty()) {

        def out = ''
        if (recipe instanceof IShapedRecipe) {
            def rcp = [
                [null, null, null],
                [null, null, null],
                [null, null, null]
            ]

            recipe.ingredients.eachWithIndex { x, i ->
                if (i in 0..2) {
                    rcp[0][i] = replaceIngredient(recipe, x)
                } else if (i in 3..5) {
                    i -= 3
                    rcp[1][i] = replaceIngredient(recipe, x)
                } else if (i in 6..8) {
                    i -= 6
                    rcp[2][i] = replaceIngredient(recipe, x)
                }
            }

            rcp = rcp.findAll { it != [null, null, null] }

            rcp.eachWithIndex { x, i ->
                out += '    ' + x.toString()
                if (i + 1 < rcp.size()) {
                    out += ",\n"
                }
            }
        } else {
            out += '    '
            recipe.ingredients.stream().eachWithIndex { x, i ->
                if (replaceIngredient(recipe, x) != null) {
                    out += replaceIngredient(recipe, x)
                    if (i + 1 < recipe.ingredients.size()) {
                        out += ', '
                    }
                }
            }
        }

        if (out != null && recipe in modifiedRecipes) {
            new File("groovy/postInit/generated").mkdir()
            def outputFile = new File("groovy/postInit/generated/${recipe.recipeOutput.item.registryName.namespace}.groovy")

            outputFile.append("\n// $recipe.recipeOutput.displayName ($recipe.class)\n")
            if (recipe.recipeOutput.amount > 1) {
                outputFile.append("(${IngredientHelper.asGroovyCode(recipe.recipeOutput, false)} " +
                    "* $recipe.recipeOutput.amount).tweakRecipe(\n")
            } else {
                outputFile.append("${IngredientHelper.asGroovyCode(recipe.recipeOutput, false)}.tweakRecipe(\n")
            }
            outputFile.append(out)
            outputFile.append('\n)\n')
        }
    }
}

println('Done!')
