
// Cat Tower
item('animania:cat_tower').tweakRecipe(
    [ore('string'), ore('lumber'), ore('lumber')],
    [ore('woolRed'), null, ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Covered Wagon
item('animania:item_wagon').tweakRecipe(
    [ore('blockWool'), ore('blockWool'), ore('lumber')],
    [item('minecraft:bed'), ore('lumber'), ore('chestWood')],
    [item('animania:wheel'), item('animania:item_cart'), item('animania:wheel')]
)

// Bee Hive
item('animania:bee_hive').tweakRecipe(
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('lumber'), item('animania:wild_hive'), ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')]
)

// Trough
item('animania:block_trough').tweakRecipe(
    [ore('lumber'), null, ore('lumber')],
    [ore('lumber'), ore('lumber'), ore('lumber')],
    [ore('stickWood'), null, ore('stickWood')]
)
