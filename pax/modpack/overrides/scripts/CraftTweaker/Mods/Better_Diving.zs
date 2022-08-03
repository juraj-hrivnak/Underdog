
#modloaded better_diving
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val itemsToRemove as IItemStack[] = [
    <better_diving:diving_mask>,
    <better_diving:reinforced_diving_mask>,
    <better_diving:rebreather>,
    <better_diving:standard_o2_tank>,
    <better_diving:high_capacity_o2_tank>,
    <better_diving:reinforced_o2_tank>,
    <better_diving:seamoth>
];

for i in itemsToRemove { rh(i); }
