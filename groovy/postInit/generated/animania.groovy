
// Trough
item('animania:block_trough').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [ore('stickWood'), null, ore('stickWood')]
)

// Horse Cart
item('animania:item_cart').tweakRecipe(
    [ore('stickWood'), ore('lumber'), ore('lumber')],
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [item('animania:wheel'), null, item('animania:wheel')]
)

// Cat Tower
item('animania:cat_tower').tweakRecipe(
    [ore('string'), ore('lumber'), ore('lumber')],
    [ore('woolRed'), null, ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Bee Hive
item('animania:bee_hive').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('animania:wild_hive'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Covered Wagon
item('animania:item_wagon').tweakRecipe(
    [ore('blockWool'), ore('blockWool'), ore('lumber')],
    [item('minecraft:bed'), ore('lumber'), ore('chestWood')],
    [item('animania:wheel'), item('animania:item_cart'), item('animania:wheel')]
)

// Tiller
item('animania:item_tiller').tweakRecipe(
    [ore('ingotIron'), ore('ingotIron'), ore('ingotIron')],
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [item('animania:wheel'), null, item('animania:wheel')]
)

// Cheese Mold
item('animania:cheese_mold').tweakRecipe(
    [ore('lumber'), ore('ingotIron'), ore('lumber')],
    [null, ore('lumber'), null]
)
