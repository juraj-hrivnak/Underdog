import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded immersiveengineering


//Treated Wood Crate
recipes.removeShaped(<immersiveengineering:wooden_device0>);
recipes.addShapedMirrored(<immersiveengineering:wooden_device0>, [[null, null], [null, <ore:plankTreatedWood>, <ore:plateIron>]]);

//Reinforced Wood Crate
recipes.removeShaped(<immersiveengineering:wooden_device0:5>);
recipes.addShaped(<immersiveengineering:wooden_device0:5>,
    [[null, <ore:plateIron>, null],
    [<ore:stickIron>, <immersiveengineering:wooden_device0>, <ore:stickIron>],
    [null, <ore:plateIron>, null]]
);
