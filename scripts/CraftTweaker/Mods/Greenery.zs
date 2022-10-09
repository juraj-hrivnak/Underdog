
#modloaded greenery
import mods.dropt.Dropt;
import scripts.CraftTweaker.Utils.RecipeUtils;

Dropt.list("plant_fibers")
    .add(Dropt.rule()
        .matchBlocks([
            "greenery:plant/upland/tall/eagle_fern:*",
            "greenery:plant/upland/tall/foxtail:*",
            "greenery:plant/upland/tall/ryegrass:*"
        ])
        .replaceStrategy("ADD")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(80))
            .items([<pyrotech:material:12>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(15))
            .items([<pyrotech:material:13>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<immersiveengineering:seed>])
        )
    );

recipes.addShapeless(<pyrotech:material:12>, [<greenery:plant/upland/tall/eagle_fern>]);
recipes.addShapeless(<pyrotech:material:12>, [<greenery:plant/upland/tall/foxtail>]);
recipes.addShapeless(<pyrotech:material:12>, [<greenery:plant/upland/tall/ryegrass>]);
recipes.addShapeless(<pyrotech:material:12>, [<greenery:plant/emergent/arrowhead>]);
recipes.addShapeless(<pyrotech:material:13>, [<greenery:plant/emergent/cattail>]);

<ore:plantCattail>.add(<greenery:plant/emergent/cattail>);
