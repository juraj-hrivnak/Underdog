
#modloaded pyrotech
import mods.pyrotech.TanningRack;

TanningRack.removeAllRecipes();

TanningRack.addRecipe("hide", <minecraft:leather>, <pyrotech:hide_tanned>, <pyrotech:hide_tanned>, 4800);
TanningRack.addRecipe("hide_small", <pyrotech:material:45>, <pyrotech:hide_small_tanned>, <pyrotech:hide_small_tanned>, 2400);
