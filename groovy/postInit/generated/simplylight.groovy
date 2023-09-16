
// Illuminant Fixture (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:wall_lamp') * 6).tweakRecipe(
    [ore('stones'), ore('stones'), ore('stones')],
    [ore('glowstone'), ore('stones'), ore('glowstone')]
)

// Illuminant Slab (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:illuminant_slab') * 6).tweakRecipe(
    [ore('glowstone'), ore('glowstone'), ore('glowstone')],
    [ore('stones'), ore('stones'), ore('stones')]
)

// Illuminant Rod (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:rodlamp') * 8).tweakRecipe(
    [ore('dustGlowstone'), ore('stones'), ore('dustGlowstone')],
    [ore('dustGlowstone'), ore('stones'), ore('dustGlowstone')],
    [ore('dustGlowstone'), ore('stones'), ore('dustGlowstone')]
)

// Illuminant Block (Inverted) (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:illuminant_block_on') * 4).tweakRecipe(
    [ore('stones'), ore('glowstone'), ore('stones')],
    [ore('glowstone'), item('minecraft:redstone_torch'), ore('glowstone')],
    [ore('stones'), ore('glowstone'), ore('stones')]
)

// Illuminant Block (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:illuminant_block') * 4).tweakRecipe(
    [ore('stones'), ore('glowstone'), ore('stones')],
    [ore('glowstone'), ore('dustRedstone'), ore('glowstone')],
    [ore('stones'), ore('glowstone'), ore('stones')]
)

// Dynamic Edge Light (bottom) (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:edge_light') * 6).tweakRecipe(
    [ore('stones'), null, ore('stones')],
    [ore('glowstone'), ore('glowstone'), ore('glowstone')],
    [ore('stones'), null, ore('stones')]
)

// Simple Light Bulb (class net.minecraftforge.oredict.ShapedOreRecipe)
(item('simplylight:lightbulb') * 8).tweakRecipe(
    [null, ore('glowstone'), null],
    [ore('stones'), ore('stones'), ore('stones')]
)
