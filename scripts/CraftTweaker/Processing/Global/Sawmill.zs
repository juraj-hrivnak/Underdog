
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mods.mekanism.sawmill as MKSawmill;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.BrickSawmill;

StoneSawmill.removeAllRecipes();
BrickSawmill.removeAllRecipes();

var oakLumber = <contenttweaker:lumber_vanilla_oak>;

val cutting as IItemStack[][IIngredient] = {

//  IIngredient input,                        IItemStack output,                 IItemStack secondaryOutput
    <minecraft:stick>                       : [<pyrotech:rock:7>               , null                            ],
    <minecraft:ladder>                  * 3 : [<minecraft:stick>            * 7, null                            ],

    <pyrotech:torch_fiber>                  : [<minecraft:stick>               , <pyrotech:material:21>          ],
    <minecraft:redstone_torch>              : [<minecraft:stick>               , <minecraft:redstone>            ],

    <minecraft:wooden_pressure_plate>       : [oakLumber                    * 2, null                            ],

    <minecraft:bed>                         : [oakLumber                    * 3, <minecraft:wool>            * 3 ],
    <minecraft:bed:1>                       : [oakLumber                    * 3, <minecraft:wool:1>          * 3 ],
    <minecraft:bed:2>                       : [oakLumber                    * 3, <minecraft:wool:2>          * 3 ],
    <minecraft:bed:3>                       : [oakLumber                    * 3, <minecraft:wool:3>          * 3 ],
    <minecraft:bed:4>                       : [oakLumber                    * 3, <minecraft:wool:4>          * 3 ],
    <minecraft:bed:5>                       : [oakLumber                    * 3, <minecraft:wool:5>          * 3 ],
    <minecraft:bed:6>                       : [oakLumber                    * 3, <minecraft:wool:6>          * 3 ],
    <minecraft:bed:7>                       : [oakLumber                    * 3, <minecraft:wool:7>          * 3 ],
    <minecraft:bed:8>                       : [oakLumber                    * 3, <minecraft:wool:8>          * 3 ],
    <minecraft:bed:9>                       : [oakLumber                    * 3, <minecraft:wool:9>          * 3 ],
    <minecraft:bed:10>                      : [oakLumber                    * 3, <minecraft:wool:10>         * 3 ],
    <minecraft:bed:11>                      : [oakLumber                    * 3, <minecraft:wool:11>         * 3 ],
    <minecraft:bed:12>                      : [oakLumber                    * 3, <minecraft:wool:12>         * 3 ],
    <minecraft:bed:13>                      : [oakLumber                    * 3, <minecraft:wool:13>         * 3 ],
    <minecraft:bed:14>                      : [oakLumber                    * 3, <minecraft:wool:14>         * 3 ],
    <minecraft:bed:15>                      : [oakLumber                    * 3, <minecraft:wool:15>         * 3 ],

    <minecraft:chest>                       : [<minecraft:planks>              , null                            ],
    <minecraft:trapped_chest>               : [<minecraft:planks>              , <minecraft:tripwire_hook>       ],

    <minecraft:wooden_slab:*>               : [<minecraft:stick>            * 3, <pyrotech:rock:7>               ],

    <minecraft:crafting_table>              : [<minecraft:planks>           * 4, null                            ],
    <minecraft:bookshelf>                   : [oakLumber                    * 6, <minecraft:book>            * 3 ],
    <minecraft:noteblock>                   : [oakLumber                    * 8, <minecraft:redstone>            ],
    <minecraft:jukebox>                     : [oakLumber                    * 8, <minecraft:diamond>             ],

    // oreLumber[0]                            : [<contenttweaker:nail_wooden> * 2, <pyrotech:rock:7>               ]

};

for input, output in cutting {

    MKSawmill.addRecipe(input, output[0], output[1], 1.0);

    BrickSawmill.addRecipe("sawmill_" + input.items[0].displayName, output[0], input, 200, 
        <pyrotech:sawmill_blade_obsidian:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_iron:*>, 1
    );

}