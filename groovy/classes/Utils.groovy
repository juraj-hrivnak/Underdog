package classes

import com.cleanroommc.groovyscript.api.IIngredient
import com.cleanroommc.groovyscript.helper.GroovyHelper
import com.cleanroommc.tabulator.common.TabulatorAPI

import net.minecraft.util.text.translation.I18n
import net.minecraftforge.fml.common.Loader
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

import org.codehaus.groovy.runtime.StackTraceUtils
import org.jetbrains.annotations.Nullable

class Utils {

    /**
     * Remove and hide items
     */
    static void purge(IIngredient... inputs) {
        inputs.each { input ->
            // Hide from JEI
            mods.jei.ingredient.hide(input)

            input.matchingStacks.each { itemStack ->
                // Replace tooltip
                itemStack.replaceTooltip("${Colors.RED}${Formats.BOLD}(${Formats.RESET}%itemName%${Colors.RED}${Formats.BOLD})")

                if (GroovyHelper.isDebug()) {
                    // Add debug tooltip (Dev only)
                    itemStack.addTooltip("Hidden & removed from " +
                            StackTraceUtils.deepSanitize(new Exception()).stackTrace[7].fileName)

                    log.info(StackTraceUtils.deepSanitize(new Exception()).stackTrace.toString())
                } else {
                    // Remove from every creative tab (Production only)
                    TabulatorAPI.removeItem(itemStack)
                }

                // Remove recipe
                itemStack.removeRecipe()
            }
        }
    }

    /** Localize translation key */
    @SideOnly(Side.CLIENT)
    static String localize(String key) {
        return I18n.translateToLocal(key)
    }

    private static int generatedRecipes = 0

    /** Generate Registry Name resource location */
    static ResourceLocation generateRegistryName(ItemStack input) {
        String suffix = "${input.itemRaw.registryName.path}_${input.metadata}_no.${generatedRecipes}"
        generatedRecipes++
        return new ResourceLocation(GroovyHelper.getPackId(), suffix)
    }

    /** Get mod name from ItemStack */
    @Nullable
    static String getModName(ItemStack itemStack) {
        if (itemStack.isEmpty()) return null

        String modId = itemStack.item.getCreatorModId(itemStack)
        if (modId == null) return null

        return Loader.instance().getIndexedModList().get(modId)?.getName()
    }
}
