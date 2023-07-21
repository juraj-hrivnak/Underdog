
import classes.Utils

item('advancedmortars:mortar', 1).tweakRecipe(
    [null        , null                         , ore('stickWood') ],
    [ore('rocks'), item('pyrotech:material', 10), ore('rocks')     ],
    [null        , ore('rocks')                 , null             ]
)

Utils.hide(
    item('advancedmortars:mortar'),
    item('advancedmortars:mortar:2'),
    item('advancedmortars:mortar:3'),
    item('advancedmortars:mortar:4'),
    item('advancedmortars:mortar:5'),
    item('advancedmortars:mortar:6'),
    ore('sand'),
    item('harvestcraft:mortarandpestleitem'),
    item('minecraft:bread'),
    item('minecraft:wheat'),
    item('minecraft:cookie'),
    ore('lumber')
)
