import mods.TweakedPetroleum.TweakedReservoir;
import mods.TweakedLib.TweakedPowerTier;

var powerTier = TweakedPowerTier.registerPowerTier(16000, 1024);
var powerTier2 = TweakedPowerTier.registerPowerTier(160000, 10240);

// Vanilla Reservoirs
TweakedReservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 6, 25, 30, powerTier,
    [], [0]);

TweakedReservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 6, 25, 40, powerTier,
    [1], [], []);

TweakedReservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 25, 30, powerTier,
    [1]);

TweakedReservoir.registerReservoirWithDrainChance("oil123123", <liquid:oil>, 2500000, 15000000, 6, 25, 0.5, 40, powerTier2,
    [], [0], [], []);
