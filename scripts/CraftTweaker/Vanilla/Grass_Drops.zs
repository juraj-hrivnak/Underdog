
import mods.dropt.Dropt;
import crafttweaker.item.IItemStack;

val seedsToRemove as IItemStack[] = [
    <immersiveengineering:seed>,
    <rustic:tomato_seeds>,
    <rustic:chili_pepper_seeds>,
    <cuisine:crops:1>,
    <cuisine:crops:2>,
    <cuisine:crops>
];

for i in seedsToRemove {
    vanilla.seeds.removeSeed(i);
}

Dropt.list("hemp_seeds")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:tallgrass:*", "greenery:tallfern:*", "greenery:tallgrass:*"])
        .matchVerticalRange(100, 255)
        .replaceStrategy("ADD")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(85))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(15))
            .items([<immersiveengineering:seed> * 1])

        )
    );
