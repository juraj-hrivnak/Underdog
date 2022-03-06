#norun
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IItemDefinition as IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;

val treeBranchThin = <ore:treeBranchThin>;
val treeBranchThick = <ore:treeBranchThick>;

val allBranches = [
    <dynamictrees:oakbranch>,
    <dynamictrees:oakbranchx>,
    <dynamictrees:sprucebranch>,
    <dynamictrees:sprucebranchx>,
    <dynamictrees:birchbranch>,
    <dynamictrees:junglebranch>,
    <dynamictrees:junglebranchx>,
    <dynamictrees:acaciabranch>,
    <dynamictrees:darkoakbranch>,
    <dynamictrees:darkoakbranchx>,
    <dynamictreesbop:magicbranch>,
    <dynamictreesbop:umbranbranch>,
    <dynamictreesbop:umbranbranchx>,
    <dynamictreesbop:firbranch>,
    <dynamictreesbop:firbranchx>,
    <dynamictreesbop:cherrybranch>,
    <dynamictreesbop:deadbranch>,
    <dynamictreesbop:jacarandabranch>,
    <dynamictreesbop:redwoodbranch>,
    <dynamictreesbop:redwoodbranchx>,
    <dynamictreesbop:willowbranch>,
    <dynamictreesbop:hellbarkbranch>,
    <dynamictreesbop:pinebranch>,
    <dynamictreesbop:palmbranch>,
    <dynamictreesbop:mahoganybranch>,
    <dynamictreesbop:mangrovebranch>,
    <dynamictreesbop:ebonybranch>,
    <dynamictreesbop:eucalyptusbranch>,
    <dynamictreesphc:cinnamonbranch>,
    <dynamictreesphc:maplebranch>,
    <dynamictreesphc:paperbarkcutbranch>,
    <dynamictreesphc:paperbarkbranch>,
    <dynamictreesphc:palmbranch>,
    <dynamictreesforestry:silverlimebranch>,
    <dynamictreesforestry:silverlimebranchx>,
    <dynamictreesforestry:walnutbranch>,
    <dynamictreesforestry:walnutbranchx>,
    <dynamictreesforestry:chestnutbranch>,
    <dynamictreesforestry:chestnutbranchx>,
    <dynamictreesforestry:cherrybranch>,
    <dynamictreesforestry:lemonbranch>,
    <dynamictreesforestry:plumbranch>,
    <dynamictreesforestry:maplebranch>,
    <dynamictreesforestry:larchbranch>,
    <dynamictreesforestry:bullpinebranch>,
    <dynamictreesforestry:coastsequoiabranch>,
    <dynamictreesforestry:teakbranch>,
    <dynamictreesforestry:ipebranch>,
    <dynamictreesforestry:ipebranchx>,
    <dynamictreesforestry:kapokbranch>,
    <dynamictreesforestry:kapokbranchx>,
    <dynamictreesforestry:ebonybranch>,
    <dynamictreesforestry:zebrawoodbranch>,
    <dynamictreesforestry:zebrawoodbranchx>,
    <dynamictreesforestry:merantibranch>,
    <dynamictreesforestry:merantibranchx>,
    <dynamictreesforestry:desertacaciabranch>,
    <dynamictreesforestry:padaukbranch>,
    <dynamictreesforestry:balsabranch>,
    <dynamictreesforestry:cocobolobranch>,
    <dynamictreesforestry:wengebranch>,
    <dynamictreesforestry:wengebranchx>,
    <dynamictreesforestry:baobabbranch>,
    <dynamictreesforestry:baobabbranchx>,
    <dynamictreesforestry:mahoebranch>,
    <dynamictreesforestry:willowbranch>,
    <dynamictreesforestry:sipiribranch>,
    <dynamictreesforestry:sipiribranchx>,
    <dynamictreesforestry:papayabranch>,
    <dynamictreesforestry:palmbranch>,
    <dynamictreesforestry:poplarbranch>,
    <rustic:olivebranch>,
    <rustic:ironwoodbranch>
] as IItemStack[];

for item in allBranches {

    var ItemDef = item.definition;

    for i in 0 to 5 {
	    treeBranchThin.add(ItemDef.makeStack(i));
    }

    for i in 5 to 16 {
        treeBranchThick.add(ItemDef.makeStack(i));
    }

}
