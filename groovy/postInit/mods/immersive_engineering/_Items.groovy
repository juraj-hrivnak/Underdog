
//MOD_LOADED immersiveengineering pyrotech

import classes.Utils
import classes.Water

def clayLump = item('pyrotech:material', 17)

/**
 * Connectors
 */

(item('contenttweaker:unfired_lv_connector') * 2).addRecipe(
    [clayLump       , ore('ingotCopper'), clayLump       ],
    [ore('clayball'), ore('ingotCopper'), ore('clayball')]
)

(item('contenttweaker:unfired_mv_connector') * 2).addRecipe(
    [clayLump       , ore('ingotCopper'), clayLump       ],
    [ore('clayball'), ore('ingotCopper'), ore('clayball')],
    [clayLump       , ore('ingotCopper'), clayLump       ]
)

(item('contenttweaker:unfired_hv_connector') * 2).addRecipe(
    [clayLump       , ore('ingotCopper'), clayLump       ],
    [ore('clayball'), ore('ingotCopper'), ore('clayball')],
    [ore('clayball'), ore('ingotCopper'), ore('clayball')]
)

Utils.removeRecipe(
    item('immersiveengineering:connector'),
    item('immersiveengineering:connector', 2),
    item('immersiveengineering:connector', 4),
)

/**
 * Relays
 */

(item('contenttweaker:unfired_lv_relay') * 4).addRecipe(
    [clayLump, ore('ingotCopper'), clayLump ],
    [clayLump, ore('clayball')   , clayLump ]
)


(item('contenttweaker:unfired_mv_relay') * 4).addRecipe(
    [clayLump       , ore('ingotCopper'), clayLump       ],
    [ore('clayball'), clayLump          , ore('clayball')],
    [clayLump       , ore('clayball')   , clayLump       ]
)

/**
 * Concrete
 */

(item('immersiveengineering:stone_decoration', 5) * 12).addRecipe(
    [ore('itemSlag'), ore('clay') , ore('itemSlag')],
    [ore('gravel')  , Water.spring, ore('gravel')  ],
    [ore('itemSlag'), ore('clay') , ore('itemSlag')]
)

/**
 * Tough Fabric
 */

// item('immersiveengineering:material', 5).addRecipe(item('harvestcraft:flaxitem').surround(ore('stickWood')*))
// item('immersiveengineering:material', 5).addRecipe(item('biomesoplenty:double_plant').surround(ore('stickWood')*))
