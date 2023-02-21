
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.primitivecrafting as Primitive;
import mods.dropt.Dropt;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Remove vanilla torch
rh(<minecraft:torch>);
<ore:torch>.remove(<minecraft:torch>);
<ore:blockTorch>.remove(<minecraft:torch>);

// Remove vanilla pumpkin
rh(<minecraft:lit_pumpkin>);

// Replace all vanilla torches
recipes.replaceAllOccurences(<minecraft:torch>, <burningtorch:burningtorch>, <*>);

// Add oredicts to new torch
<ore:torch>.add(<burningtorch:burningtorch>);
<ore:blockTorch>.add(<burningtorch:burningtorch>);

// Add recipe for new torch
val coal = <minecraft:coal> | <minecraft:coal:1> | <geolosys:coal:1> | <geolosys:coal:2> | <geolosys:coal:3> | <pyrotech:material:21> | <burningtorch:charredtorchremains>;
RecipeUtils.tweakRecipe(true, <burningtorch:burningtorch>, [[coal], [<ore:stickWood>]]);

// Add primitive recipe for new torch
Primitive.addRecipe(<burningtorch:burningtorch>, coal, <ore:stickWood>);

// Add drops for new torch
Dropt.list("burningtorch")
    .add(Dropt.rule()
        .matchBlocks(["burningtorch:burningtorch:*"])
        .addDrop(Dropt.drop()
            .force()
            .items([<minecraft:stick>]) // 100% Sticks
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<pyrotech:material:21>]) // 50% drop coal pieces
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50)) // drop nothing else 50% of time
        )
    );

// Add drops for Burning Pumpkin
Dropt.list("burningpumpkin")
.add(Dropt.rule()
    .matchBlocks(["burningtorch:burningpumpkin:*"])
    .addDrop(Dropt.drop()
        .force()
        .items([<minecraft:pumpkin>]) // 100% Pumpkin
    )
    .addDrop(Dropt.drop()
        .selector(Dropt.weight(50))
        .items([<pyrotech:material:21>]) // 50% drop coal pieces
    )
    .addDrop(Dropt.drop()
        .selector(Dropt.weight(50)) // drop nothing else 50% of time
    )
);