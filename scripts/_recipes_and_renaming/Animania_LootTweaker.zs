import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val largeAnimals as string[string] = {
    cowPrime : "farm/animania:cow_prime",
    cowRegular : "farm/animania:cow_regular",
    pigPrime : "farm/animania:pig_prime",
    pigRegular : "farm/animania:pig_regular",
};

val mediumAnimals as string[string] = {
    goatPrime : "farm/animania:goat_prime",
    goat_regular : "farm/animania:goat_regular",
    sheepPrime : "farm/animania:sheep_prime",
    sheepRegular : "farm/animania:sheep_regular"
};

val smallAnimals as string[string] = {
    chickenPrime : "farm/animania:chicken_prime",
    chickenRegular : "farm/animania:chicken_regular",

    peacockBlue : "extra/animania:peacocks/peacock_blue",
    peacockCharcoal : "extra/animania:peacocks/peacock_charcoal",
    peacockOpal : "extra/animania:peacocks/peacock_opal",
    peacockPeach : "extra/animania:peacocks/peacock_peach",
    peacockPurple : "extra/animania:peacocks/peacock_purple",
    peacockTaupe : "extra/animania:peacocks/peacock_taupe",
    peacockWhite : "extra/animania:peacocks/peacock_white"
};


for i, loc in largeAnimals {
    val i = LootTweaker.getTable(loc);
    val mainPool = i.addPool("main", 1, 1, 0, 0); val mainPool2 = i.addPool("main2", 1, 1, 0, 0);

    //Drops 4-8 Leather
    mainPool.addItemEntry(<minecraft:leather>, 1, 0, [Functions.setCount(4, 8)], []);
    //Drops 10-20 bones
    mainPool2.addItemEntry(<minecraft:bone>, 1, 0, [Functions.setCount(10, 20)], []);
}

for i, loc in mediumAnimals {
    val i = LootTweaker.getTable(loc);
    val mainPool = i.addPool("main", 1, 1, 0, 0); val mainPool2 = i.addPool("main2", 1, 1, 0, 0);

    //Drops 1-3 Leather
    mainPool.addItemEntry(<minecraft:leather>, 1, 0, [Functions.setCount(1, 3)], []);
    //Drops 6-8 bones
    mainPool2.addItemEntry(<minecraft:bone>, 1, 0, [Functions.setCount(6, 10)], []);
}

for i, loc in smallAnimals {
    val i = LootTweaker.getTable(loc);
    val mainPool = i.addPool("main", 1, 1, 0, 0); val mainPool2 = i.addPool("main2", 1, 1, 0, 0);

    //Drops 0-1 Leather
    mainPool.addItemEntry(<minecraft:leather>, 1, 0, [Functions.setCount(0, 1)], []);
    //Drops 2-4 bones
    mainPool2.addItemEntry(<minecraft:bone>, 1, 0, [Functions.setCount(2, 4)], []);
}