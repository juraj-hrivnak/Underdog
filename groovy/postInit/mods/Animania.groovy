
//MOD_LOADED animania cuisine

import classes.Utils

Utils.purge(item('animania:carving_knife'))

def knifeCarving = [
    (item('animania:friesian_cheese_wedge'))    : item('animania:friesian_cheese_wheel')  ,
    (item('animania:holstein_cheese_wedge'))    : item('animania:holstein_cheese_wheel')  ,
    (item('animania:jersey_cheese_wedge'))      : item('animania:jersey_cheese_wheel')    ,
    (item('animania:goat_cheese_wedge'))        : item('animania:goat_cheese_wheel')      ,
    (item('animania:sheep_cheese_wedge'))       : item('animania:sheep_cheese_wheel')     ,
    (item('animania:raw_prime_bacon'))          : item('animania:raw_prime_pork')         ,
    (item('animania:raw_prime_steak'))          : item('animania:raw_prime_beef')         ,
    // (item('animania:block_straw'))              : item('minecraft:wheat')
]

for (x in knifeCarving) {
    def smallChunk = x.key
    def bigChunk = x.value

    (smallChunk * 4).addRecipe(
        [item('cuisine:kitchen_knife'), bigChunk]
    )
}

def bucketIron =
      item('forge:bucketfilled').withNbt([FluidName: 'milk_holstein', Amount: 1000])
    | item('forge:bucketfilled').withNbt([FluidName: 'milk_friesian', Amount: 1000])
    | item('forge:bucketfilled').withNbt([FluidName: 'milk_jersey', Amount: 1000])
    | item('forge:bucketfilled').withNbt([FluidName: 'milk_goat', Amount: 1000])
    | item('forge:bucketfilled').withNbt([FluidName: 'milk_goat', Amount: 1000])
    | item('forge:bucketfilled').withNbt([FluidName: 'milk_sheep', Amount: 1000])

def bucketRefractory =
      (item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_holstein', Amount: 1000]])
    | item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_friesian', Amount: 1000]])
    | item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_jersey', Amount: 1000]])
    | item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_refractory').withNbt([fluids: [FluidName: 'milk_sheep', Amount: 1000]]))

def bucketStone =
      item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_holstein', Amount: 1000]])
    | item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_friesian', Amount: 1000]])
    | item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_jersey', Amount: 1000]])
    | item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_stone').withNbt([fluids: [FluidName: 'milk_sheep', Amount: 1000]])

def bucketWood =
      item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_holstein', Amount: 1000]])
    | item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_friesian', Amount: 1000]])
    | item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_jersey', Amount: 1000]])
    | item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_wood').withNbt([fluids: [FluidName: 'milk_sheep', Amount: 1000]])

def bucketClay =
      item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_holstein', Amount: 1000]])
    | item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_friesian', Amount: 1000]])
    | item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_jersey', Amount: 1000]])
    | item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_goat', Amount: 1000]])
    | item('pyrotech:bucket_clay').withNbt([fluids: [FluidName: 'milk_sheep', Amount: 1000]])

item('minecraft:milk_bucket').tweakRecipe(bucketIron.noReturn())

crafting.shapelessBuilder()
    .output(item('pyrotech:bucket_refractory', 1))
    .input(bucketRefractory.noReturn())
    .recipeFunction { item ->
        item.copyWithMeta(item.getItemDamage() + 1)
    }
    .register()

//  [ bucketRefractory.noReturn().marked('bucket') ],
//     def (out, ins, cInfo) {
//         return out.withTag({durability: ins.bucket.tag.durability})
//     },
//     null
// )

// crafting.addShapeless('milk_fix_stone', item('pyrotech:bucket_stone', 1), [ bucketStone.noReturn().marked('bucket') ],
//     def (out, ins, cInfo) {
//         return out.withTag({durability: ins.bucket.tag.durability})
//     },
//     null
// )

// crafting.addShapeless('milk_fix_wood', item('pyrotech:bucket_wood', 1), [ bucketWood.noReturn().marked('bucket') ],
//     def (out, ins, cInfo) {
//         return out.withTag({durability: ins.bucket.tag.durability})
//     },
//     null
// )

// crafting.addShapeless('milk_fix_clay', item('pyrotech:bucket_clay', 1), [ bucketClay.noReturn().marked('bucket') ],
//     def (out, ins, cInfo) {
//         return out.withTag({durability: ins.bucket.tag.durability})
//     },
//     null
// )

// // Remove Saddle recipe
// crafting.remove('animania:saddle')

// // Meats oredict support
// ore('listAllrabbitraw').add(item('animania:raw_prime_rabbit'))
// ore('listAllchickenraw').add(item('animania:raw_peacock'))
// ore('listAllchickenraw').add(item('animania:raw_prime_peacock'))
// ore('listAllmuttonraw').add(item('animania:raw_prime_mutton'))
// ore('listAllmuttonraw').add(item('animania:raw_prime_chevon'))

// // Trough
// RecipeUtils.tweakRecipe(true, item('animania:block_trough'),
//    [[ore('lumber')   , null           , ore('lumber')    ],
//     [ore('lumber')   , ore('plankWood'), ore('lumber')    ],
//     [ore('stickWood'), null           , ore('stickWood') ]])

// // Horse Cart
// RecipeUtils.tweakRecipe(true, item('animania:item_cart'),
//    [[ore('stickWood') , ore('lumber')     , ore('lumber')     ],
//     [ore('lumber')    , ore('ingotBronze'), ore('lumber')     ],
//     [item('animania:wheel'), null             , item('animania:wheel') ]])

// // Tiller
// RecipeUtils.tweakRecipe(true, item('animania:item_tiller'),
//    [[ore('ingotBronze'), ore('ingotBronze'), ore('ingotBronze') ],
//     [ore('lumber')     , ore('ingotBronze'), ore('lumber')      ],
//     [item('animania:wheel') , null             , item('animania:wheel')  ]])

// // Wheel
// RecipeUtils.tweakRecipe(true, item('animania:wheel'),
//     RecipeUtils.createCrossWithCore(ore('lumber'), null, ore('stickWood')))

// // Cheese Mold
// RecipeUtils.tweakRecipe(true, item('animania:cheese_mold'),
//    [[ore('lumber')   , null        , ore('lumber')    ],
//     [ore('stickWood'), ore('lumber'), ore('stickWood') ]])

// // Pet Bowl
// def terracotta = item('minecraft:stained_hardened_clay')
// RecipeUtils.tweakRecipe(true, item('animania:pet_bowl'),
//    [[terracotta, null      , terracotta ],
//     [null      , terracotta, null       ]])
