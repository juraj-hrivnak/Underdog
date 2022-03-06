#modloaded emergingtechnology
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

val itemsToRemove = [
    //Hydroponic Grow Bed
    <emergingtechnology:hydroponic>,
    <emergingtechnology:light>,
    <emergingtechnology:frame>,
    //Bulbs
    <emergingtechnology:redbulb>,
    <emergingtechnology:greenbulb>,
    <emergingtechnology:bluebulb>,
    <emergingtechnology:purplebulb>,
    //Syringes
    <emergingtechnology:minecraft_spidersyringe>,
    <emergingtechnology:minecraft_zombiesyringe>
] as IItemStack[];

for i in itemsToRemove {rh(i);}
