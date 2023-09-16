
// Ultimate Tier Installer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('mekanism:tierinstaller', 3).tweakRecipe(
    [ore('alloyUltimate'), ore('circuitUltimate'), ore('alloyUltimate')],
    [ore('gemDiamond'), ore('lumber'), ore('gemDiamond')],
    [ore('alloyUltimate'), ore('circuitUltimate'), ore('alloyUltimate')]
)

// Elite Tier Installer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('mekanism:tierinstaller', 2).tweakRecipe(
    [ore('alloyElite'), ore('circuitElite'), ore('alloyElite')],
    [ore('ingotGold'), ore('lumber'), ore('ingotGold')],
    [ore('alloyElite'), ore('circuitElite'), ore('alloyElite')]
)

// Advanced Tier Installer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('mekanism:tierinstaller', 1).tweakRecipe(
    [ore('alloyAdvanced'), ore('circuitAdvanced'), ore('alloyAdvanced')],
    [ore('ingotOsmium'), ore('lumber'), ore('ingotOsmium')],
    [ore('alloyAdvanced'), ore('circuitAdvanced'), ore('alloyAdvanced')]
)

// Basic Tier Installer (class net.minecraftforge.oredict.ShapedOreRecipe)
item('mekanism:tierinstaller').tweakRecipe(
    [ore('alloyBasic'), ore('circuitBasic'), ore('alloyBasic')],
    [ore('ingotIron'), ore('lumber'), ore('ingotIron')],
    [ore('alloyBasic'), ore('circuitBasic'), ore('alloyBasic')]
)

// Combiner (class mekanism.common.recipe.ShapedMekanismRecipe)
item('mekanism:machineblock', 2).tweakRecipe(
    [ore('alloyElite'), ore('circuitElite'), ore('alloyElite')],
    [ore('rocks'), item('mekanism:basicblock', 8), ore('rocks')],
    [ore('alloyElite'), ore('circuitElite'), ore('alloyElite')]
)

// Ultimate Bin (class mekanism.common.recipe.ShapedMekanismRecipe)
item('mekanism:basicblock', 6).tweakRecipe(
    [ore('rocks'), ore('circuitUltimate'), ore('rocks')],
    [ore('alloyUltimate'), item('mekanism:basicblock', 6).withNbt(["tier": 2]), ore('alloyUltimate')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Elite Bin (class mekanism.common.recipe.ShapedMekanismRecipe)
item('mekanism:basicblock', 6).tweakRecipe(
    [ore('rocks'), ore('circuitElite'), ore('rocks')],
    [ore('alloyElite'), item('mekanism:basicblock', 6).withNbt(["tier": 1]), ore('alloyElite')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Advanced Bin (class mekanism.common.recipe.ShapedMekanismRecipe)
item('mekanism:basicblock', 6).tweakRecipe(
    [ore('rocks'), ore('circuitAdvanced'), ore('rocks')],
    [ore('alloyAdvanced'), item('mekanism:basicblock', 6).withNbt(["tier": 0]), ore('alloyAdvanced')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)

// Basic Bin (class mekanism.common.recipe.ShapedMekanismRecipe)
item('mekanism:basicblock', 6).tweakRecipe(
    [ore('rocks'), ore('circuitBasic'), ore('rocks')],
    [ore('alloyBasic'), null, ore('alloyBasic')],
    [ore('rocks'), ore('rocks'), ore('rocks')]
)
