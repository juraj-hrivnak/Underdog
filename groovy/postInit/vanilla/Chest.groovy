
import classes.io.Replacer
import classes.Utils

item('minecraft:chest').with {
    ore('chestWood').remove(it)
    ore('chest').remove(it)
    Replacer.replaceItemStack(it, ore('chestWood'))
    Utils.rmh(it)
    it.setBurnTime(0)
}
