import mods.TweakedPetroleum.TweakedReservoir;


// Power usage
TweakedReservoir.registerPowerUsage(0, 16000, 1024);

// Vanilla Reservoirs
TweakedReservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 6, 25, 30, 0,
    [], [0], [], []);

TweakedReservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 6, 25, 40, 0,
    [1], [], [], []);

TweakedReservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 25, 30, 0,
    [1], [], [], []);
