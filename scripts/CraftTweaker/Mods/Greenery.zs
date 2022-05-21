
#modloaded greenery
import mods.dropt.Dropt;
import scripts.CraftTweaker.Utils.RecipeUtils;

Dropt.list("plant_fibers")
    .add(Dropt.rule()
        .matchBlocks(["greenery:tallfern:*", "greenery:tallgrass:*"])
        .replaceStrategy("ADD")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(85))
            .items([<pyrotech:material:12>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(15))
            .items([<pyrotech:material:13>])
        )
    );

recipes.addShapeless(<pyrotech:material:12>, [<greenery:tallfern>]);
recipes.addShapeless(<pyrotech:material:12>, [<greenery:tallgrass>]);
recipes.addShapeless(<pyrotech:material:12>, [<greenery:arrowhead>]);
recipes.addShapeless(<pyrotech:material:13>, [<greenery:cattail>]);

<ore:plantCattail>.add(<greenery:cattail>);
