
import com.cleanroommc.groovyscript.helper.ingredient.OreDictIngredient
import net.minecraftforge.fml.common.FMLCommonHandler
import net.minecraftforge.fml.relauncher.Side

class ToolTips {

    static final Map<ItemStack, String> tooltipsToReplace = [:]

    static final Map<ItemStack, String> tooltipsToAddWithNbt = [:]
    static final Map<ItemStack, String> tooltipsToAdd = [:]

    /**
     * Replaces all tooltips for item.
     * Note: You can add %itemName% to the input, and it will be replaced with the item name.
     */
    static void replaceTooltip(ItemStack itemStack, String tooltip) {
        if (FMLCommonHandler.instance().effectiveSide.isClient()) {
            tooltipsToReplace[itemStack] = tooltip
        }
    }

    /**
     * Adds a new tooltip for item.
     */
    static void addTooltip(ItemStack itemStack, String tooltip) {
        if (FMLCommonHandler.instance().effectiveSide.isClient()) {
            if (itemStack.hasNbt() && !itemStack.nbt.isEmpty() && tooltip !in tooltipsToAddWithNbt) {
                tooltipsToAddWithNbt[itemStack] = tooltip
            } else if (tooltip ! in tooltipsToAdd) {
                tooltipsToAdd[itemStack] = tooltip
            }
        }
    }

    /**
     * Adds a new tooltip for all items in OreDict.
     */
    static void addTooltip(OreDictIngredient oreDictIngredient, String tooltip) {
        if (FMLCommonHandler.instance().effectiveSide.isClient()) {
            oreDictIngredient.matchingStacks.each { itemStack ->
                if (itemStack != null) {
                    if (itemStack.hasNbt() && !itemStack.nbt.isEmpty()) {
                        tooltipsToAddWithNbt[itemStack] = tooltip
                    } else {
                        tooltipsToAdd[itemStack] = tooltip
                    }
                }
            }
        }
    }
}
