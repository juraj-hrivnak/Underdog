
#modloaded toolbelt
import scripts.CraftTweaker.Utils.RecipeUtils;

// Materials
val leatherSheet = <pyrotech:material:38>;
val leatherStrap = <pyrotech:material:39>;
val leatherCord = <pyrotech:material:40>;

// Tool Belt
RecipeUtils.tweakRecipe(true, <toolbelt:belt>,
   [[leatherStrap, leatherCord, leatherStrap ],
    [leatherSheet, null       , leatherSheet ],
    [leatherCord , leatherCord, leatherCord  ]]);

// Belt Pouch
RecipeUtils.tweakRecipe(true, <toolbelt:pouch>,
   [[null        , leatherSheet, null         ],
    [leatherStrap, null        , leatherStrap ],
    [null        , leatherSheet, null         ]]);
