
#modloaded bibliocraft
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val framedChests = [
    <bibliocraft:framedchest>,
    <bibliocraft:framedchest:1>,
    <bibliocraft:framedchest:2>,
    <bibliocraft:framedchest:3>,
    <bibliocraft:framedchest:4>,
    <bibliocraft:framedchest:5>,
    <bibliocraft:framedchest:6>
] as IItemStack[];

for i in framedChests { rh(i); }
