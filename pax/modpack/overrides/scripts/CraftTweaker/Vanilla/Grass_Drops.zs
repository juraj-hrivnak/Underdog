
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
