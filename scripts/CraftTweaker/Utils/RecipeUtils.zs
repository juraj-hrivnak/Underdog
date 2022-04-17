// Heavily based on https://github.com/friendlyhj/GrassUtils/blob/master/main/RecipeUtils.zs
// Under MIT license: https://opensource.org/licenses/MIT
#loader crafttweaker
#priority 100000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import scripts.CraftTweaker.Utils.StringHelper;

static tweakRecipeCounter as int = 0;

function getNameForRecipe(input as IIngredient) as string {
	if (input instanceof IItemStack) {
		var item as IItemStack = input;
		var mod as string = item.definition.owner;
		var id as string = item.definition.id.split(":")[1];
		var meta as int = item.metadata;
		var amount as int = item.amount;
		if (meta == 0) {
			if (amount == 0) {
				return (mod + "_" + id);
			} else return (mod + "_" + id + "_x" + amount);
		} else if (amount == 0) {
			if (meta == 32767) {
				return (mod + "_" + id + "_any_meta");
			} else return (mod + "_" + id + "_" + meta);
		} else if (meta == 32767) {
			return (mod + "_" + id + "_any_meta" + "_x" + amount);
		} else return (mod + "_" + id + "_" + meta + "_x" + amount);
	} else if (input instanceof IOreDictEntry) {
		var oreDict as IOreDictEntry = input;
		var name as string = oreDict.name;
		return ("ore_" + StringHelper.toSnakeCase(name));
	} else if (input instanceof ILiquidStack) {
		var liquid as ILiquidStack = input;
		var name as string = liquid.definition.name;
		var amount as int = liquid.amount;
		if (amount == 0) {
			return ("liquid_" + name);
		} else return ("liquid_" + name + "_x" + amount);
	} else if (input instanceof IIngredient) {
		return toString(input)
			.replace("> ", "_")
			.replace(">", "")
			.replace(" <", "_")
			.replace("<", "")
			.replace(":", "_")
			.replace("*", "x")
			.replace(" |", "_or")
			.replace("|", "or")
			.replaceAll("\\s+","");
	}
}

function tweakRecipe(isShaped as bool, output as IItemStack, input as IIngredient[][]) {
    recipes.remove(output.withAmount(1), true);
    var recipeName as string = StringHelper.getItemNameWithUnderline(output) ~ "_fixed";
    if (output.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakRecipeCounter);
    }
    if (isShaped) {
        recipes.addShaped(recipeName, output, input);
    } else {
        recipes.addShapeless(recipeName, output, input[0]);
    }
    tweakRecipeCounter += 1;
}

function createSurround(core as IIngredient, surrounded as IIngredient) as IIngredient[][] {
    return
      [[surrounded, surrounded, surrounded ],
       [surrounded, core      , surrounded ],
       [surrounded, surrounded, surrounded ]];
}

function createFull3(input as IIngredient) as IIngredient[][] {
    return
      [[input, input, input ],
       [input, input, input ],
       [input, input, input ]];
}

function createFull2(input as IIngredient) as IIngredient[][] {
    return
      [[input, input ],
       [input, input ]];
}

function createCross(five as IIngredient, four as IIngredient) as IIngredient[][] {
    return
      [[five, four, five ],
       [four, five, four ],
       [five, four, five ]];
}

function createCrossWithCore(core as IIngredient, a as IIngredient, b as IIngredient) as IIngredient[][] {
    return
      [[a, b   , a ],
       [b, core, b ],
       [a, b   , a ]];
}

function createLeftSlash(input as IIngredient) as IIngredient[][] {
    return
      [[input, null, null],
       [null, input, null],
       [null, null, input]];
}

function createRightSlash(input as IIngredient) as IIngredient[][] {
    return
      [[null, null, input],
       [null, input, null],
       [input, null, null]];
}
