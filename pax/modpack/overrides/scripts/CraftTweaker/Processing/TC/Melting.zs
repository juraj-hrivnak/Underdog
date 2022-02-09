
#priority -50
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
import mods.tconstruct.Melting as TCMelting;

// Nail
TCMelting.addRecipe(<liquid:iron> * 18, <contenttweaker:nail_iron>);

<liquid:lava>.definition.temperature = 0;
<liquid:liquidoxygen>.definition.temperature = 1538;
mods.tconstruct.Fuel.registerFuel(<liquid:liquidoxygen>, 300);

// Ore Mixtures
TCMelting.addRecipe(<liquid:bronze> * 1152, <ore:mixtureBronze>);
TCMelting.addRecipe(<liquid:constantan> * 576, <ore:mixtureConstantan>);
TCMelting.addRecipe(<liquid:electrum> * 576, <ore:mixtureElectrum>);
TCMelting.addRecipe(<liquid:invar> * 864, <ore:mixtureInvar>);
