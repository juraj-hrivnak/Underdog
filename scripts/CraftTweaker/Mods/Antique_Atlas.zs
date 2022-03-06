
#modloaded antiqueatlas
import crafttweaker.item.IItemStack;

// Atlas
recipes.removeShapeless(<antiqueatlas:empty_antique_atlas>);
recipes.addShapedMirrored(<antiqueatlas:empty_antique_atlas>, [
    [<ore:paper>, <ore:paper>],
    [<ore:leather>, <ore:leather>]
]);

<antiqueatlas:empty_antique_atlas>.displayName = game.localize("underdog.displayname.empty_antique_atlas");
<antiqueatlas:antique_atlas>.displayName = game.localize("underdog.displayname.antique_atlas");
