package classes.io

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.GroovyHelper
import com.cleanroommc.groovyscript.helper.ingredient.IngredientHelper
import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient
import com.cleanroommc.groovyscript.helper.GroovyFile

import net.minecraft.item.crafting.IRecipe
import net.minecraft.item.crafting.Ingredient
import net.minecraftforge.common.crafting.IShapedRecipe
import net.minecraftforge.fluids.FluidStack
import net.minecraftforge.oredict.OreIngredient

import java.lang.IllegalArgumentException


/**
 * Generates groovy code for recipes at run-time.
 * Should be run only in dev enviroment.
 *
 * Make sure to delete the script cache before running.
 */
class Replacer {

    /**
     * Enables Replacer, though it is still only run in dev enviroment.
     */
    private static enabled = false

    private static oreDictsToReplace = [:]
    private static fluidStacksToReplace = [:]
    private static itemStacksToReplace = [:]

    private static List<String> ignoredRecipes = []
    private static List<String> modifiedRecipes = []

    private static isRunning = false

    static void replaceOreDict(OreDictIngredient oreDict, replacement) {
        oreDictsToReplace.put(oreDict, replacement)
    }

    static void replaceFluidStack(FluidStack fluidStack, replacement) {
        fluidStacksToReplace.put(fluidStack, replacement)
    }

    static void replaceItemStack(IIngredient ingredient, replacement) {
        itemStacksToReplace.put(ingredient, replacement)
    }

    static void ingore(IRecipe recipe) {
        if (recipe !in ignoredRecipes && recipe?.registryName != null) {
            ignoredRecipes << recipe.registryName.toString()
        }
    }

    static void run() {
        if (!GroovyHelper.isDebug() || isRunning || !enabled)
        {
            log.info('Replacer is disabled!')
            return
        }

        log.info('Generating replacement recipes!')
        isRunning = true

        new GroovyFile("groovy/postInit/generated").deleteDir()

        crafting.streamRecipes().filter { recipe ->
            recipe !instanceof com.cleanroommc.groovyscript.registry.DummyRecipe
                    && recipe.registryName != null
                    && recipe.registryName.toString() !in ignoredRecipes
                    && !recipe.ingredients.isEmpty()
        }.each { recipe ->
            def out = ''

            if (recipe.ingredients.size() == 1) {
                out += '    ' + replaceIngredient(recipe, recipe.ingredients.find { it != null })
            } else if (recipe.registryName.toString().contains('_door')) {
                def item = replaceIngredient(recipe, recipe.ingredients.find { it != null })
                def rcp = [
                    [item, item],
                    [item, item],
                    [item, item]
                ]
                rcp.eachWithIndex { x, i ->
                    out += '    ' + x.toString()
                    if (i + 1 < rcp.size()) {
                        out += ",\n"
                    }
                }
            } else if (recipe instanceof IShapedRecipe) {
                def rcp = [[],[],[]]

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

                if (rcp[1] != null && !rcp[1].isEmpty() && (rcp[0].size() - rcp[1].size()) != 0) {

                    1..(rcp[0].size() - rcp[1].size()).each { i ->
                        if (rcp[1][i] == null) rcp[1][i] = "null"
                    }
                }

                if (rcp[2] != null && !rcp[2].isEmpty() && (rcp[1].size() - rcp[2].size()) != 0) {

                    1..(rcp[1].size() - rcp[2].size()).each { i ->
                        if (rcp[2][i] == null) rcp[2][i] = "null"
                    }
                }

                rcp = rcp.findAll { it != [null, null, null] }
                rcp = rcp.findAll { !it.isEmpty() }

                rcp.eachWithIndex { x, i ->
                    out += '    ' + x.toString()
                    if (i + 1 < rcp.size()) {
                        out += ",\n"
                    }
                }
            } else {
                out += '    '
                recipe.ingredients.eachWithIndex { x, i ->
                    if (replaceIngredient(recipe, x) != null) {
                        out += replaceIngredient(recipe, x)
                        if (i + 1 < recipe.ingredients.size()) {
                            out += ', '
                        }
                    }
                }
            }

            if (out != null && recipe.registryName.toString() in modifiedRecipes) {

                def parentDir = new GroovyFile("groovy/postInit/generated")
                if (!parentDir.exists()) {
                    parentDir.mkdir()
                }

                def outputFile = new GroovyFile("groovy/postInit/generated/${recipe.recipeOutput.item.registryName.namespace}.groovy")
                outputFile.append('')

                String recipeString
                if (recipe.recipeOutput.amount > 1) {
                    recipeString = "\n// $recipe.recipeOutput.displayName\n" +
                        "(${IngredientHelper.asGroovyCode(recipe.recipeOutput, false, false)}" +
                        ").tweakRecipe(\n" +
                        out + '\n)\n'
                } else {
                    recipeString = "\n// $recipe.recipeOutput.displayName\n" +
                        "${IngredientHelper.asGroovyCode(recipe.recipeOutput, false, false)}" +
                        ".tweakRecipe(\n" +
                        out + '\n)\n'
                }

                if (!outputFile.text.contains(recipeString)) {
                    outputFile.append(recipeString.replace('.withNbt([])', ''))
                }
            }
        }

        isRunning = false
        log.info('Done!')
    }

    /**
     * MC Ingredient variant. Used on input
     * ! [1] Needs OreIngredient mixin to be enabled.
     */
    static String asGroovyCode(Ingredient input) {
        String result = null
        if (input instanceof OreIngredient) {
            result = IngredientHelper.asGroovyCode(input.oreDict, false)
            // !                               [1] ^^^^^^^^^^^^^
        } else if (input instanceof FluidStack) {
            result = IngredientHelper.asGroovyCode(input, false)
        } else if ((Object) input instanceof Ingredient) {
            if (input.matchingStacks.length == 1) {
                result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)
            } else if (input.matchingStacks.length > 1) {
                String y = '('
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
     * GroovyScript's IIngredient variant. Used on output
     */
    static String asGroovyCode(IIngredient input) {
        String result = null
        if (input instanceof OreDictIngredient) {
            result = IngredientHelper.asGroovyCode(input.oreDict, false)
        } else if (input instanceof FluidStack) {
            result = IngredientHelper.asGroovyCode(input, false)
        } else if (input instanceof IIngredient) {
            if (input.matchingStacks.length == 1) {
                result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)
            } else if (input.matchingStacks.length > 1) {
                String y = '('
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

    private static String replaceIngredient(IRecipe recipe, Ingredient input) {
        String result = null
        if (input instanceof OreIngredient) {
            result = IngredientHelper.asGroovyCode(input.oreDict, false)

            for (ore in this.oreDictsToReplace) {
                if (input.oreDict == ore.key.oreDict) {
                    if (recipe.registryName.toString() !in modifiedRecipes) {
                        modifiedRecipes << recipe.registryName.toString()
                    }
                    result = asGroovyCode(ore.value)
                }
            }
        } else if (input instanceof FluidStack) {
            result = IngredientHelper.asGroovyCode(input, false)

            for (fluid in this.fluidStacksToReplace) {
                if (input == fluid.key) {
                    if (recipe.registryName.toString() !in modifiedRecipes) {
                        modifiedRecipes << recipe.registryName.toString()
                    }
                    result = asGroovyCode(fluid.value)
                }
            }
        } else if ((Object) input instanceof Ingredient) {
            if (input.matchingStacks.length > 0) {
                result = IngredientHelper.asGroovyCode(input.matchingStacks[0], false, false)

                for (item in this.itemStacksToReplace) {
                    if (ItemStack.areItemsEqual(input.matchingStacks[0], item.key)) {
                        if (recipe.registryName.toString() !in modifiedRecipes) {
                            modifiedRecipes << recipe.registryName.toString()
                        }
                        result = asGroovyCode(item.value)
                    }
                }
            }
        }
        return result
    }

}