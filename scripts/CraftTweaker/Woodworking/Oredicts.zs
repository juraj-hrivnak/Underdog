
#priority -101
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Adding items from plankWood oredict to plankBig oredict
<ore:plankBig>.addAll(<ore:plankWood>);

<ore:plankWood>.removeItems(<ore:plankWood>.items);

<ore:plankWood>.add(<ore:lumber>.items);

<ore:plankWood>.mirror(<ore:plankBig>);
