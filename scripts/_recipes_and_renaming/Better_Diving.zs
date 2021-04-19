#modloaded better_diving
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val itemsToRemove = [
    <better_diving:diving_mask>,
    <better_diving:reinforced_diving_mask>,
    <better_diving:rebreather>,
    <better_diving:standard_o2_tank>,
    <better_diving:high_capacity_o2_tank>,
    <better_diving:reinforced_o2_tank>,
    <better_diving:seamoth>
] as IItemStack[];

for i in itemsToRemove {rh(i);}

