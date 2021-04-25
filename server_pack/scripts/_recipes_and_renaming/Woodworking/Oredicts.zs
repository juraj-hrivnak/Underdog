#priority 13
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Adding items from plankWood oredict to plankBig oredict
<ore:plankBig>.addAll(<ore:plankWood>);

<ore:plankWood>.add(<cuisine:planks>);
<ore:plankWood>.removeItems(<ore:plankWood>.items);

<ore:plankWood>.add(<ore:lumber>.items);

<ore:plankWood>.mirror(<ore:plankBig>);


// Removing default recipes for crafting table
recipes.remove(<minecraft:crafting_table>);

// Adding "plankBig" oredict recipe for crafting table
recipes.addShaped(<minecraft:crafting_table>,
    [[<ore:plankBig>, <ore:plankBig>],
     [<ore:plankBig>, <ore:plankBig>]]);