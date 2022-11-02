
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val shulkerBoxes as IIngredient[][IItemStack] = {
    <minecraft:white_shulker_box>       : [<minecraft:wool>   , <pyrotech:pelt_sheep_white>     ],
    <minecraft:orange_shulker_box>      : [<minecraft:wool:1> , <pyrotech:pelt_sheep_orange>    ],
    <minecraft:magenta_shulker_box>     : [<minecraft:wool:2> , <pyrotech:pelt_sheep_magenta>   ],
    <minecraft:light_blue_shulker_box>  : [<minecraft:wool:3> , <pyrotech:pelt_sheep_blue_light>],
    <minecraft:yellow_shulker_box>      : [<minecraft:wool:4> , <pyrotech:pelt_sheep_yellow>    ],
    <minecraft:lime_shulker_box>        : [<minecraft:wool:5> , <pyrotech:pelt_sheep_lime>      ],
    <minecraft:pink_shulker_box>        : [<minecraft:wool:6> , <pyrotech:pelt_sheep_pink>      ],
    <minecraft:gray_shulker_box>        : [<minecraft:wool:7> , <pyrotech:pelt_sheep_gray>      ],
    <minecraft:silver_shulker_box>      : [<minecraft:wool:8> , <pyrotech:pelt_sheep_gray_light>],
    <minecraft:cyan_shulker_box>        : [<minecraft:wool:9> , <pyrotech:pelt_sheep_cyan>      ],
    <minecraft:purple_shulker_box>      : [<minecraft:wool:10>, <pyrotech:pelt_sheep_purple>    ],
    <minecraft:blue_shulker_box>        : [<minecraft:wool:11>, <pyrotech:pelt_sheep_blue>      ],
    <minecraft:brown_shulker_box>       : [<minecraft:wool:12>, <pyrotech:pelt_sheep_brown>     ],
    <minecraft:green_shulker_box>       : [<minecraft:wool:13>, <pyrotech:pelt_sheep_green>     ],
    <minecraft:red_shulker_box>         : [<minecraft:wool:14>, <pyrotech:pelt_sheep_red>       ],
    <minecraft:black_shulker_box>       : [<minecraft:wool:15>, <pyrotech:pelt_sheep_black>     ]
};

for box, x in shulkerBoxes {
    val wool = x[0];
    val pelt = x[1];

    recipes.addShaped(box,
       [[pelt, wool             , pelt],
        [wool, <ore:ingotBronze>, wool],
        [pelt, wool             , pelt]]);
}

