
#priority -50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide as rh;
import mod.mekanism.gas.IGasStack;
import mods.mekanism.infuser as MKInfuser;

MKInfuser.addRecipe("OBSIDIAN", 10, <mekanism:reinforcedalloy>  , <mekanism:atomicalloy>            );
MKInfuser.addRecipe("BIO"     , 10, <minecraft:dirt>            , <minecraft:dirt:2>                );
MKInfuser.addRecipe("CARBON"  , 10, <ore:dustGold>           * 4, <mekanismgenerators:hohlraum>     );
MKInfuser.addRecipe("BIO"     , 10, <minecraft:cobblestone>     , <minecraft:mossy_cobblestone>     );
MKInfuser.addRecipe("BIO"     , 10, <minecraft:stonebrick>      , <minecraft:stonebrick:1>          );
MKInfuser.addRecipe("DIAMOND" , 10, <mekanism:enrichedalloy>    , <mekanism:reinforcedalloy>        );
MKInfuser.addRecipe("TIN"     , 10, <ore:ingotCopper>        * 3, <mekanism:ingot:2>            * 4 );
MKInfuser.addRecipe("DIAMOND" , 10, <mekanism:otherdust:6>      , <mekanism:otherdust:5>            );
MKInfuser.addRecipe("REDSTONE", 10, <mekanism:ingot:1>          , <mekanism:controlcircuit>         );
MKInfuser.addRecipe("REDSTONE", 10, <minecraft:iron_ingot>      , <mekanism:enrichedalloy>          );
MKInfuser.addRecipe("CARBON"  , 10, <minecraft:iron_ingot>      , <mekanism:enrichediron>           );
MKInfuser.addRecipe("TIN"     , 10, <mekanism:ingot:5>       * 3, <mekanism:ingot:2>            * 4 );
MKInfuser.addRecipe("FUNGI"   , 10, <minecraft:dirt>            , <minecraft:mycelium>              );
MKInfuser.addRecipe("BIO"     , 10, <minecraft:sand>            , <minecraft:dirt>                  );
MKInfuser.addRecipe("TIN"     , 10, <geolosys:ingot>         * 3, <mekanism:ingot:2>            * 4 );
MKInfuser.addRecipe("CARBON"  , 10, <mekanism:enrichediron>     , <immersiveengineering:metal:17>   );