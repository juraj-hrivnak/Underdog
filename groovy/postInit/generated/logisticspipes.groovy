
// Logistics Crafting Table
item('logisticspipes:crafting_table').tweakRecipe(
    [null, item('minecraft:crafting_table'), null],
    [ore('lumber'), item('logisticspipes:frame'), ore('lumber')],
    [null, item('minecraft:piston'), null]
)

// Logistics Block Frame
item('logisticspipes:frame').tweakRecipe(
    [ore('ingotIron'), ore('dustRedstone'), ore('ingotIron')],
    [ore('lumber'), null, ore('lumber')]
)

// Remote Orderer Logistics Pipe
item('logisticspipes:pipe_remote_orderer').tweakRecipe(
    [null, item('logisticspipes:logistics_programmer').withNbt(["LogisticsRecipeTarget": "logisticspipes:pipe_remote_orderer"]), null],
    [item('mekanism:controlcircuit', 2), item('logisticspipes:chip_basic'), ore('dustRedstone')],
    [ore('ingotIron'), item('logisticspipes:pipe_basic'), ore('ingotIron')]
)

// Logistics Inventory System Connector
item('logisticspipes:pipe_inventory_system_connector').tweakRecipe(
    [null, item('logisticspipes:logistics_programmer').withNbt(["LogisticsRecipeTarget": "logisticspipes:pipe_inventory_system_connector"]), null],
    [item('mekanism:controlcircuit', 2), item('logisticspipes:chip_basic'), ore('dustRedstone')],
    [ore('ingotIron'), item('logisticspipes:pipe_basic'), ore('ingotIron')]
)

// Logistics Firewall Pipe
item('logisticspipes:pipe_firewall').tweakRecipe(
    [null, item('logisticspipes:logistics_programmer').withNbt(["LogisticsRecipeTarget": "logisticspipes:pipe_firewall"]), null],
    [item('mekanism:controlcircuit', 2), item('logisticspipes:chip_advanced'), ore('dustRedstone')],
    [ore('ingotIron'), item('logisticspipes:pipe_basic'), ore('ingotIron')]
)
