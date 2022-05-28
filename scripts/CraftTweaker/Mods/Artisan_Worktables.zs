
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI.hide as h;

function ieBlueprintGetter(bp as string) as IItemStack{
    return <immersiveengineering:blueprint>.withTag({blueprint: bp});
}

// Removing stuff
h(<artisanworktables:workstation:9>);
h(<artisanworktables:workstation:12>);
h(<artisanworktables:workshop:9>);

recipes.addShaped(<artisanworktables:design_pattern>,
   [[<ore:dyeBlue> ],
    [<ore:paper>   ]]);

recipes.addShapeless(<artisanworktables:workshop:12>,
    [   <contenttweaker:table_top>,
        <artisanworktables:design_pattern>,
        <ore:lumber>,
        <ore:lumber>    ]);

// Components
RecipeBuilder.get("designer")
  .setShaped([
    [null, <ore:ingotIron>, <ore:ingotAluminum>, <ore:ingotCopper>, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 16])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(ieBlueprintGetter("components"))
  .setExtraOutputOne(<minecraft:iron_ingot>, 1.0)
  .setExtraOutputTwo(<geolosys:ingot:4>, 1.0)
  .setExtraOutputThree(<geolosys:ingot>, 1.0)
  .create();

// Bullets
RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <immersiveengineering:bullet>, null, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 16])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(ieBlueprintGetter("bullet"))
  .setExtraOutputOne(<immersiveengineering:bullet>, 1.0)
  .create();

// Special Bullets
RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <immersiveengineering:blueprint>.onlyWithTag({blueprint: "bullet"}), null, null],
    [null, null, <immersiveengineering:bullet>, null, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 16])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(ieBlueprintGetter("specialBullet"))
  .setExtraOutputOne(<immersiveengineering:bullet>, 1.0)
  .create();

// Electrodes
RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <ore:stickIron>, null, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 16, <immersiveengineering:material:17> * 3])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(ieBlueprintGetter("electrode"))
  .setExtraOutputOne(<immersiveengineering:material:1>, 1.0)
  .create();

// Molds
RecipeBuilder.get("designer")
  .setShaped([
    [null, null, <immersiveengineering:metal:39>, null, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]])
  .setSecondaryIngredients([<ore:dyeBlue> * 16])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(ieBlueprintGetter("molds"))
  .setExtraOutputOne(<immersiveengineering:metal:39>, 1.0)
  .create();
