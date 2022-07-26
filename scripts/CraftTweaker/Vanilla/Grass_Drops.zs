
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
        .matchBlocks(["greenery:tallfern:*", "greenery:tallgrass:*"])
        .matchVerticalRange(100, 255)
        .replaceStrategy("ADD")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<immersiveengineering:seed>])
        )
    );
