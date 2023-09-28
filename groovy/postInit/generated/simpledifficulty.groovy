
// Rain Collector
item('simpledifficulty:rain_collector').tweakRecipe(
    [ore('ingotIron'), ore('string'), ore('ingotIron')],
    [ore('rocks'), item('minecraft:bucket'), ore('rocks')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Heater
item('simpledifficulty:heater').tweakRecipe(
    [item('simpledifficulty:magma_chunk'), null, item('simpledifficulty:magma_chunk')],
    [item('simpledifficulty:magma_chunk'), ore('rocks'), item('simpledifficulty:magma_chunk')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)

// Chiller
item('simpledifficulty:chiller').tweakRecipe(
    [item('simpledifficulty:ice_chunk'), null, item('simpledifficulty:ice_chunk')],
    [item('simpledifficulty:ice_chunk'), ore('rocks'), item('simpledifficulty:ice_chunk')],
    [ore('rocks'), ore('dustRedstone'), ore('rocks')]
)
