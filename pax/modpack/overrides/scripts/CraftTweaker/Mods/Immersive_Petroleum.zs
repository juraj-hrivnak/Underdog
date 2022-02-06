
#modloaded immersivepetroleum
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Asphalt
recipes.removeByRecipeName("immersivepetroleum:stone_decoration/asphalt2");
recipes.addShaped(<immersivepetroleum:stone_decoration> * 12,
   [[<ore:slag>     , <immersivepetroleum:material> , <ore:slag>    ],
    [<ore:gravel>   , <ore:listAllwater>            , <ore:gravel>  ],
    [<ore:slag>     , <immersivepetroleum:material> , <ore:slag>    ]]);