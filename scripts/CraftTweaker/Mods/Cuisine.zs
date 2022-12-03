
#modloaded cuisine
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.hideCategory as hc;
import mods.jei.JEI.hide as h;
import crafttweaker.item.IIngredient;

import mods.cuisine.AxeChopping;
import mods.cuisine.Mortar;
import mods.cuisine.Mill as mill;

import scripts.CraftTweaker.Utils.RecipeUtils;

// Removing Mortar
Mortar.removeAll();
recipes.removeByRecipeName("cuisine:mortar");
<ore:toolMortarandpestle>.remove(<cuisine:mortar:*>);
<ore:listAllwater>.remove(<cuisine:mortar:1>);
<ore:portionWaterLarge>.remove(<cuisine:mortar:1>);
hc("cuisine.mortar");
h(<cuisine:mortar:*>);

// Chopping block fix
recipes.addHiddenShaped("Chopping Boards", <cuisine:chopping_board>,
    [[<ore:logWood>.only(function(item) {return item.isItemBlock;})
        .marked("source")]],
    function(out, ins, cInfo) {
        return out.withTag({
            BlockEntityTag: {
                cover: {
                    id: ins.source.definition.id,
                    Count: 1 as byte,
                    Damage: ins.source.damage
                }
            }
        });
    }, null
);

// Harvestcraft Coconut from dynamictreesphc item
// AxeChopping.add(<dynamictreesphc:coconutseed>, <harvestcraft:coconutitem>);
// // Tropicraft's Coconut Chunk from harvestcraft's Coconut
// AxeChopping.add(<harvestcraft:coconutitem>, <tropicraft:coconut_chunk> * 2);
// // Pineapple cubes
// AxeChopping.add(<ore:cropPineapple>, <tropicraft:pineapple_cubes>);

// // Mill
// mill.add(<minecraft:dye:15>, null, <biomesoplenty:white_dye>, null);
// mill.add(<ore:gemLapis>, null, <biomesoplenty:blue_dye>, null);

mill.add(<ore:orePyrite>, null, <minecraft:blaze_powder>, null);

val masonryBrick = <pyrotech:material:16>;

// Mill
RecipeUtils.tweakRecipe(true, <cuisine:mill>,
   [[<ore:handleWood>],
    [<ore:stones>]]);

// Fire Pit
val fuel = <ore:itemCoal> | <ore:itemCharcoal>;
RecipeUtils.tweakRecipe(true, <cuisine:fire_pit>,
   [[<ore:rocks>, fuel          , <ore:rocks> ],
    [fuel       , <ore:firewood>, fuel        ],
    [<ore:rocks>, fuel          , <ore:rocks> ]]);

// Wooden Handle
RecipeUtils.tweakRecipe(true, <cuisine:material:1>, [[<ore:stickWood>, <ore:stickWood>]]);

// Jar
RecipeUtils.tweakRecipe(true, <cuisine:jar>,
   [[null            , <ore:ingotBrick>, null             ],
    [<ore:ingotBrick>, null            , <ore:ingotBrick> ],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick> ]]);

// Earthen Basin
RecipeUtils.tweakRecipe(true, <cuisine:earthen_basin>,
   [[<ore:ingotBrick>, null            , <ore:ingotBrick> ],
    [masonryBrick    , <ore:ingotBrick>, masonryBrick     ]]);

// Wooden Basin
RecipeUtils.tweakRecipe(true, <cuisine:wooden_basin>,
   [[<ore:lumber>, null        , <ore:lumber> ],
    [masonryBrick, <ore:lumber>, masonryBrick ]]);

val basins = {
    <cuisine:earthen_basin_colored>     : <minecraft:dye:15>,
    <cuisine:earthen_basin_colored:1>   : <minecraft:dye:14>,
    <cuisine:earthen_basin_colored:2>   : <minecraft:dye:13>,
    <cuisine:earthen_basin_colored:3>   : <minecraft:dye:12>,
    <cuisine:earthen_basin_colored:4>   : <minecraft:dye:11>,
    <cuisine:earthen_basin_colored:5>   : <minecraft:dye:10>,
    <cuisine:earthen_basin_colored:6>   : <minecraft:dye:9>,
    <cuisine:earthen_basin_colored:7>   : <minecraft:dye:8>,
    <cuisine:earthen_basin_colored:8>   : <minecraft:dye:7>,
    <cuisine:earthen_basin_colored:9>   : <minecraft:dye:6>,
    <cuisine:earthen_basin_colored:10>  : <minecraft:dye:5>,
    <cuisine:earthen_basin_colored:11>  : <minecraft:dye:4>,
    <cuisine:earthen_basin_colored:12>  : <minecraft:dye:3>,
    <cuisine:earthen_basin_colored:13>  : <minecraft:dye:2>,
    <cuisine:earthen_basin_colored:14>  : <minecraft:dye:1>,
    <cuisine:earthen_basin_colored:15>  : <minecraft:dye>
} as IItemStack[IItemStack];

for basin, dye in basins {
    RecipeUtils.tweakRecipe(false, basin, [[<cuisine:earthen_basin>, dye]]);
}

// Bamboo compat
<ore:bamboo>.add(<cuisine:bamboo>);
