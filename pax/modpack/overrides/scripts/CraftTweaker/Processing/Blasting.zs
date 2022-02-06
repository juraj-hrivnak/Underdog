
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.dropt.Dropt;
// import mods.inworldcrafting.ExplosionCrafting as Explosion;

// var hematite    = <geolosys:ore>;
// var limonite    = <geolosys:ore:1>;
// var malachite   = <geolosys:ore:2>;
// var azurite     = <geolosys:ore:3>;
// var cassiterite = <geolosys:ore:4>;
// var teallite    = <geolosys:ore:5>;
// var galena      = <geolosys:ore:6>;
// var bauxite     = <geolosys:ore:7>;
// var platinum    = <geolosys:ore:8>;
// var atunite     = <geolosys:ore:9>;
// var sphalerite  = <geolosys:ore:10>;
// var coal        = <geolosys:ore_vanilla>;
// var cinnabar    = <geolosys:ore_vanilla:1>;
// var gold        = <geolosys:ore_vanilla:2>;
// var lapis       = <geolosys:ore_vanilla:3>;
// var quartz      = <geolosys:ore_vanilla:4>;
// var kimberlite  = <geolosys:ore_vanilla:5>;
// var beryl       = <geolosys:ore_vanilla:6>;

val blasting as IItemStack[][string] = {

//  IIngredient input,             IItemStack output,                          IItemStack secondaryOutput
    "geolosys:ore"              : [<immersiveengineering:metal:18>        , null                              ],
    "geolosys:ore:1"            : [<immersiveengineering:metal:18>        , <immersiveengineering:metal:13>   ],
    "geolosys:ore:2"            : [<immersiveengineering:metal:9>         , <immersiveengineering:metal:19>   ],
    "geolosys:ore:3"            : [<immersiveengineering:metal:9>         , <immersiveengineering:metal:19>   ],
    "geolosys:ore:4"            : [<mekanism:dust:4>                      , null                              ],
    "geolosys:ore:5"            : [<mekanism:dust:4>                      , null                              ],
    "geolosys:ore:6"            : [<immersiveengineering:metal:11>        , <immersiveengineering:metal:12>   ],
    "geolosys:ore:7"            : [<immersiveengineering:metal:10>        , null                              ],
    "geolosys:ore:8"            : [<mekanism:dust:2>                      , null                              ],
    "geolosys:ore:9"            : [<immersiveengineering:metal:14>        , <immersiveengineering:metal:11>   ],

    "geolosys:ore:10"           : [<geolosys:cluster:10>                  , null                              ],
    "geolosys:ore_vanilla"      : [<minecraft:coal>                       , null                              ],
    "geolosys:ore_vanilla:1"    : [<minecraft:redstone>                   , null                              ],
    "geolosys:ore_vanilla:2"    : [<immersiveengineering:metal:19>        , null                              ],
    "geolosys:ore_vanilla:3"    : [<minecraft:dye:4>                      , null                              ],
    "geolosys:ore_vanilla:4"    : [<minecraft:quartz>                     , null                              ],
    "geolosys:ore_vanilla:5"    : [<divergentunderground:gem_raw_diamond> , null                              ],
    "geolosys:ore_vanilla:6"    : [<contenttweaker:beryl_cluster>         , null                              ],

};

for input, output in blasting {

    if isNull(output[1]) {
        Dropt.list("blast_" + input).add(Dropt.rule()
            .matchBlocks([input])
            .matchHarvester(Dropt.harvester().type("EXPLOSION"))
            .addDrop(Dropt.drop()
                .force()
                .items([output[0]], Dropt.range(3)))
        );
    } else {
        Dropt.list("blast_" + input).add(Dropt.rule()
            .matchBlocks([input])
            .matchHarvester(Dropt.harvester().type("EXPLOSION"))
            .addDrop(Dropt.drop()
                .force()
                .items([output[0]], Dropt.range(3)))
            .addDrop(Dropt.drop()
                .force()
                .items([output[1]], Dropt.range(1)))
        );
    }
}
