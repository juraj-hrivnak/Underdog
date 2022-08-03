
#modloaded debark
import scripts.CraftTweaker.Utils.RecipeUtils;

for item in loadedMods["debark"].items {
    furnace.setFuel(item, 0);
    <ore:tooBig>.add(item);
}
