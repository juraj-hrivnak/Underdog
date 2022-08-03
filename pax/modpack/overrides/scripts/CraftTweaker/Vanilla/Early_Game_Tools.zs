
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import modtweaker.tconstruct.ITICMaterial;

// Shovel
recipes.addShaped(<minecraft:stone_shovel>,
  [[null           , <ore:rocks>         ],
   [<ore:stickWood>, <ore:rocks>.reuse() ]]);

// Axe
recipes.addShaped(<minecraft:stone_axe>,
  [[<ore:rocks>    , <ore:rocks>.reuse() ],
   [<ore:stickWood>, null                ]]);

// // Tinkers Construct Materials:
// static tconMaterials as ITICMaterial[string] = {
//     "stone"                                         : <ticmat:stone>                                        ,
//     "flint"                                         : <ticmat:flint>                                        ,
//     "cactus"                                        : <ticmat:cactus>                                       ,
//     "bone"                                          : <ticmat:bone>                                         ,
//     "obsidian"                                      : <ticmat:obsidian>                                     ,
//     "prismarine"                                    : <ticmat:prismarine>                                   ,
//     "endstone"                                      : <ticmat:endstone>                                     ,
//     "paper"                                         : <ticmat:paper>                                        ,
//     "sponge"                                        : <ticmat:sponge>                                       ,
//     "firewood"                                      : <ticmat:firewood>                                     ,
//     "iron"                                          : <ticmat:iron>                                         ,
//     "pigiron"                                       : <ticmat:pigiron>                                      ,
//     "knightslime"                                   : <ticmat:knightslime>                                  ,
//     "slime"                                         : <ticmat:slime>                                        ,
//     "blueslime"                                     : <ticmat:blueslime>                                    ,
//     "magmaslime"                                    : <ticmat:magmaslime>                                   ,
//     "netherrack"                                    : <ticmat:netherrack>                                   ,
//     "cobalt"                                        : <ticmat:cobalt>                                       ,
//     "ardite"                                        : <ticmat:ardite>                                       ,
//     "manyullyn"                                     : <ticmat:manyullyn>                                    ,
//     "copper"                                        : <ticmat:copper>                                       ,
//     "bronze"                                        : <ticmat:bronze>                                       ,
//     "lead"                                          : <ticmat:lead>                                         ,
//     "silver"                                        : <ticmat:silver>                                       ,
//     "electrum"                                      : <ticmat:electrum>                                     ,
//     "steel"                                         : <ticmat:steel>                                        ,
//     "string"                                        : <ticmat:string>                                       ,
//     "slimevine_blue"                                : <ticmat:slimevine_blue>                               ,
//     "slimevine_purple"                              : <ticmat:slimevine_purple>                             ,
//     "vine"                                          : <ticmat:vine>                                         ,
//     "blaze"                                         : <ticmat:blaze>                                        ,
//     "reed"                                          : <ticmat:reed>                                         ,
//     "ice"                                           : <ticmat:ice>                                          ,
//     "endrod"                                        : <ticmat:endrod>                                       ,
//     "feather"                                       : <ticmat:feather>                                      ,
//     "slimeleaf_blue"                                : <ticmat:slimeleaf_blue>                               ,
//     "slimeleaf_orange"                              : <ticmat:slimeleaf_orange>                             ,
//     "slimeleaf_purple"                              : <ticmat:slimeleaf_purple>                             ,
//     "leaf"                                          : <ticmat:leaf>                                         ,
//     "treatedwood"                                   : <ticmat:treatedwood>                                  ,
//     "hemp"                                          : <ticmat:hemp>                                         ,
//     "constantan"                                    : <ticmat:constantan>                                   ,
//     "integrationforegoing.plastic"                  : <ticmat:integrationforegoing.plastic>                 ,
//     "integrationforegoing.pink_slime"               : <ticmat:integrationforegoing.pink_slime>              ,
//     "integrationforegoing.reinforced_pink_slime"    : <ticmat:integrationforegoing.reinforced_pink_slime>   ,
//     "tnt"                                           : <ticmat:tnt>                                          ,
//     "alumite"                                       : <ticmat:alumite>                                      ,
//     "nickel"                                        : <ticmat:nickel>                                       ,
//     "invar"                                         : <ticmat:invar>                                        ,
//     "iridium"                                       : <ticmat:iridium>                                      ,
//     "sapphire"                                      : <ticmat:sapphire>                                     ,
//     "ruby"                                          : <ticmat:ruby>                                         ,
//     "peridot"                                       : <ticmat:peridot>                                      ,
//     "malachite_gem"                                 : <ticmat:malachite_gem>                                ,
//     "amber"                                         : <ticmat:amber>                                        ,
//     "topaz"                                         : <ticmat:topaz>                                        ,
//     "tanzanite"                                     : <ticmat:tanzanite>                                    ,
//     "amethyst"                                      : <ticmat:amethyst>                                     ,
//     "osmium"                                        : <ticmat:osmium>                                       ,
//     "refinedobsidian"                               : <ticmat:refinedobsidian>                              ,
//     "refinedglowstone"                              : <ticmat:refinedglowstone>                             ,
//     "osgloglas"                                     : <ticmat:osgloglas>                                    ,
//     "osmiridium"                                    : <ticmat:osmiridium>                                   ,
//     "certusquartz_plustic"                          : <ticmat:certusquartz_plustic>                         ,
//     "fluixcrystal_plustic"                          : <ticmat:fluixcrystal_plustic>                         ,
//     "emerald_plustic"                               : <ticmat:emerald_plustic>                              ,
//     "wood"                                          : <ticmat:wood>
// };

// function getITICMaterial(stringMaterial as string) as ITICMaterial {
//     return tconMaterials[stringMaterial] as ITICMaterial;
// }

// function getTConPart(item as IItemStack, mat as string) as IItemStack {
//     return item.withTag({Material: mat}) as IItemStack;
// }

// recipes.addShapeless("pick", <tconstruct:pickaxe>,
//     [
//         <tconstruct:pick_head>.marked("pick_head"),
//         <tconstruct:tool_rod>.marked("tool_rod"),
//         <tconstruct:binding>.marked("binding")
//     ],
//     function(out, ins, cInfo) {
//         return out.withTag({
//             TinkerData: {
//                 Materials: [
//                     ins.tool_rod.tag.Material,
//                     ins.pick_head.tag.Material,
//                     ins.binding.tag.Material
//                 ],
//                 Modifiers: []
//             },
//             StatsOriginal: {
//                 AttackSpeedMultiplier: getITICMaterial(ins.tool_rod.tag.Material).modifierHandle as float,
//                 MiningSpeed: getITICMaterial(ins.pick_head.tag.Material).miningSpeedHead as float,
//                 FreeModifiers: 3,
//                 Durability: getITICMaterial(ins.pick_head.tag.Material).durabilityHead + getITICMaterial(ins.tool_rod.tag.Material).durabilityHandle + getITICMaterial(ins.binding.tag.Material).durabilityExtra,
//                 HarvestLevel: getITICMaterial(ins.pick_head.tag.Material).harvestLevelHead,
//                 Attack: getITICMaterial(ins.pick_head.tag.Material).attackHead as float
//             },
//             Stats: {
//                 AttackSpeedMultiplier: getITICMaterial(ins.tool_rod.tag.Material).modifierHandle as float,
//                 MiningSpeed: getITICMaterial(ins.pick_head.tag.Material).miningSpeedHead as float,
//                 FreeModifiers: 3,
//                 Durability: (getITICMaterial(ins.pick_head.tag.Material).durabilityHead + getITICMaterial(ins.tool_rod.tag.Material).durabilityHandle + getITICMaterial(ins.binding.tag.Material).durabilityExtra) as int,
//                 HarvestLevel: getITICMaterial(ins.pick_head.tag.Material).harvestLevelHead,
//                 Attack: getITICMaterial(ins.pick_head.tag.Material).attackHead as float
//             },
//             Special: {
//                 Categories: [
//                     "harvest",
//                     "tool",
//                     "aoe"
//                 ]
//             },
//             Modifiers: [
//                 {
//                     identifier: "ecological", color: -7444965, level: 1
//                 },
//                 {
//                     identifier: "cheapskate", color: -6710887, level: 1
//                 },
//                 {
//                     identifier: "cheap", color: -6710887, level: 1
//                 }
//             ],
//             Traits: [
//                 "ecological",
//                 "cheapskate",
//                 "cheap"
//             ]
//         });
//     },
//     null
// );
