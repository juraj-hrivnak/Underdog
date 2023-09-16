
// Black Hole Unit (class net.minecraftforge.oredict.ShapedOreRecipe)
item('industrialforegoing:black_hole_unit').tweakRecipe(
    [item('industrialforegoing:plastic'), item('industrialforegoing:plastic'), item('industrialforegoing:plastic')],
    [item('mekanism:controlcircuit', 3), item('mekanism:controlcircuit', 2), item('mekanism:controlcircuit', 3)],
    [ore('chestWood'), item('teslacorelib:machine_case'), ore('chestWood')]
)

// Black Hole Tank (class net.minecraft.item.crafting.ShapedRecipes)
item('industrialforegoing:black_hole_tank').tweakRecipe(
    [item('industrialforegoing:plastic'), item('industrialforegoing:plastic'), item('industrialforegoing:plastic')],
    [item('mekanism:controlcircuit', 3), item('mekanism:controlcircuit', 2), item('mekanism:controlcircuit', 3)],
    [item('minecraft:bucket'), item('teslacorelib:machine_case'), item('minecraft:bucket')]
)

// Enchantment Sorter (class net.minecraftforge.oredict.ShapedOreRecipe)
item('industrialforegoing:enchantment_refiner').tweakRecipe(
    [item('industrialforegoing:plastic'), item('mekanism:controlcircuit', 2), item('industrialforegoing:plastic')],
    [item('minecraft:book'), item('teslacorelib:machine_case'), item('minecraft:enchanted_book')],
    [item('industrialforegoing:plastic'), ore('gearDiamond'), item('industrialforegoing:plastic')]
)
