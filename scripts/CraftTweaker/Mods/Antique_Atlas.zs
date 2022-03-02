
#modloaded antiqueatlas
import crafttweaker.item.IItemStack as IItemStack;

// Atlas
recipes.removeShapeless(<antiqueatlas:empty_antique_atlas>);
recipes.addShapedMirrored(<antiqueatlas:empty_antique_atlas>, [
    [<ore:paper>, <ore:paper>],
    [<ore:leather>, <ore:leather>]
]);

<antiqueatlas:empty_antique_atlas>.displayName = "Atlas";
<antiqueatlas:antique_atlas>.displayName = "Atlas";