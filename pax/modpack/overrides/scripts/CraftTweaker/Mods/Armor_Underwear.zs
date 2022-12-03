
#modloaded armorunder
import scripts.CraftTweaker.Utils.RecipeUtils;

// Cool Liner Material
RecipeUtils.tweakRecipe(true, <armorunder:cool_liner_material> * 6,
   [[<ore:string>  , <ore:blockIce> ],
    [<ore:blockIce>, <ore:string>   ]]);

recipes.addShaped(<armorunder:cool_liner_material> * 6,
   [[<ore:string>    , <minecraft:snow> ],
    [<minecraft:snow>, <ore:string>     ]]);

// Warm Liner Material
RecipeUtils.tweakRecipe(true, <armorunder:warm_liner_material> * 6,
   [[<ore:string>, <ore:wool>   ],
    [<ore:wool>  , <ore:string> ]]);

// Auto Liner Material
RecipeUtils.tweakRecipe(true, <armorunder:flipflop_liner_material>,
   [[<armorunder:cool_liner_material>, <armorunder:cool_liner_material> ],
    [<armorunder:warm_liner_material>, <armorunder:warm_liner_material> ]]);

// Auto Chestplate Liner
recipes.addShaped(<armorunder:auto_chestplate_liner>,
   [[<armorunder:flipflop_liner_material>, null                                , <armorunder:flipflop_liner_material> ],
    [<armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material> ],
    [<armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material> ]]);

// Auto Leggings Liner
recipes.addShaped(<armorunder:auto_leggings_liner>,
   [[<armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material>, <armorunder:flipflop_liner_material> ],
    [<armorunder:flipflop_liner_material>, null                                , <armorunder:flipflop_liner_material> ],
    [<armorunder:flipflop_liner_material>, null                                , <armorunder:flipflop_liner_material> ]]);
