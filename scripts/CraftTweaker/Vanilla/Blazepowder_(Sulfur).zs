
import scripts.CraftTweaker.Utils.RecipeUtils;

// Renaming "Blaze Powder" to "Sulfur Chunk"
<minecraft:blaze_powder>.displayName = game.localize("underdog.displayname.blaze_powder");

// Renaming "Blaze Rod" to "Sulfur Rod"
<minecraft:blaze_rod>.displayName = game.localize("underdog.displayname.blaze_rod");
<ore:rodSulfur>.add(<minecraft:blaze_rod>);

// Adding recipe for Blaze Rod
recipes.addShaped(<minecraft:blaze_rod>,
   [[<minecraft:blaze_powder>],
    [<minecraft:blaze_powder>]]);

// Adding recipe for Sulfur Chunk
recipes.addShaped(<minecraft:blaze_powder>, RecipeUtils.createFull2(<ore:dustSulfur>));

// Adding recipe for Sulfur Dust
recipes.addShapeless(<mekanism:otherdust:3> * 4, [<minecraft:blaze_powder>]);

// Sulfur Ore
<ore:orePyrite>.add(<contenttweaker:pyrite_cluster>);
