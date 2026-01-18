
import classes.ToolTips
import classes.Utils
import classes.io.Replacer

import com.codetaylor.mc.pyrotech.modules.tech.machine.ModuleTechMachine
import com.codetaylor.mc.pyrotech.modules.tech.machine.recipe.BrickSawmillRecipe
import com.codetaylor.mc.pyrotech.modules.tech.machine.recipe.StoneSawmillRecipe

/**
 * THIS FILE CREATES WOODWORKING RECIPES FOR IE SEPARATELY TO MITIGATE THE SERVER-SIDE CRASH.
 *
 * 
 */

def treatedLumber = item('contenttweaker:treated_wood_lumber')
def treatedPlanks = item('immersiveengineering:treated_wood')
def treatedSlab = item('immersiveengineering:treated_wood_slab')

// Raw treated lumber
ItemStack rawTreatedLumber = treatedLumber.withNbt(['raw': true])
ToolTips.replaceTooltip(rawTreatedLumber, "Raw %itemName%")

// Remove default recipe for treated planks
treatedPlanks.removeRecipe()

// Remove default recipes for treated slabs
treatedSlab.removeRecipe()

// Adding recipes for slabs
(treatedSlab * 2).addRecipe(
    [treatedLumber, treatedLumber]
)

// Adding recipes for planks from slabs
treatedPlanks.addRecipe(
    [treatedSlab],
    [treatedSlab]
)

// Adding recipes for lumber from slab
treatedLumber.addRecipe(treatedSlab)

// Adding 'lumber' OreDict to treated lumber
ore('lumber').add(treatedLumber)

// Replacing treated planks with treated lumbers
Replacer.replaceItemStack(treatedPlanks, treatedLumber)

// Adding recipe for lumber from planks
(treatedLumber * 2).addRecipe(treatedPlanks)

// Adding recipe for planks block from four lumbers
(treatedPlanks * 2).addRecipe(
    [treatedLumber, treatedLumber],
    [treatedLumber, treatedLumber]
)

def ironNail = item('contenttweaker:nail_iron')
IIngredient sawmillBlades =
     (item('pyrotech:sawmill_blade_stone:*')
    | item('pyrotech:sawmill_blade_flint:*')
    | item('pyrotech:sawmill_blade_bone:*')
    | item('pyrotech:sawmill_blade_iron:*')
    | item('pyrotech:sawmill_blade_gold:*')
    | item('pyrotech:sawmill_blade_diamond:*')
    | item('pyrotech:sawmill_blade_obsidian:*'))

// Adding bonus recipe for using "raw" lumber with iron nails
(treatedPlanks * 4).addRecipe(
    [rawTreatedLumber, rawTreatedLumber, ironNail],
    [rawTreatedLumber, rawTreatedLumber, null    ],
    [ironNail        , null            , null    ]
)

// Adding recipe for lumber with iron nails
(treatedPlanks * 2).addRecipe(
    [treatedLumber, treatedLumber, ironNail],
    [treatedLumber, treatedLumber, null    ],
    [ironNail     , null         , null    ]
)

mods.mekanism.sawmill.add(treatedPlanks, treatedLumber * 2, item())

ModuleTechMachine.Registries.STONE_SAWMILL_RECIPES.groovyScript$registerEntry(
    new StoneSawmillRecipe(
        treatedLumber * 2,
        treatedPlanks.toMcIngredient(),
        200,
        sawmillBlades.toMcIngredient(),
        0
    ).setRegistryName(Utils.generateRegistryName(treatedLumber))
)

ModuleTechMachine.Registries.BRICK_SAWMILL_RECIPES.groovyScript$registerEntry(
    new BrickSawmillRecipe(
        treatedLumber * 2,
        treatedPlanks.toMcIngredient(),
        20,
        sawmillBlades.toMcIngredient(),
        0
    ).setRegistryName(Utils.generateRegistryName(treatedLumber))
)

// Chest recipes - using hardcoded registry name to avoid . getItem() call
item('charset:chest')
    .withNbt(['wood': 'immersiveengineering:treated_wood;0'])
    .addRecipe(
        [treatedLumber, treatedLumber, treatedLumber],
        [treatedLumber, null         , treatedLumber],
        [treatedLumber, treatedLumber, treatedLumber]
    )

// Stencil table recipes - using hardcoded registry name to avoid .getItem() call
item('tconstruct:tooltables', 1)
    .withNbt(['textureBlock': [
        'id': 'immersiveengineering: treated_wood',
        'Count': 1 as byte,
        'Damage': 0 as short
    ]])
    .addRecipe(
        [item('tconstruct:pattern'), treatedLumber],
        [treatedLumber             , null         ]
    )
