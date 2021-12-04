#modloaded compatskills reskillable
#priority 1002

import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;

val mapping = createSkill("mapping", "minecraft:textures/blocks/concrete_white.png");
mapping.name = "Mapping";
mapping.setRankIcon(0, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(1, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(2, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(3, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(4, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(5, "minecraft:textures/items/compass_20.png");
mapping.setRankIcon(6, "minecraft:textures/items/compass_20.png");
<skill:compatskills:mapping>.setCap(16);
<skill:compatskills:mapping>.setSkillPointInterval(1);

/*
    Enabled skills are:
        <skill:reskillable:agility>
        <skill:compatskills:mapping>
*/
var disabledSkills = [
	<skill:reskillable:attack>,
	<skill:reskillable:building>,
	<skill:reskillable:defense>,
	<skill:reskillable:farming>,
	<skill:reskillable:gathering>,
	<skill:reskillable:magic>,
	<skill:reskillable:mining>
] as Skill[];
for skill in disabledSkills {
	skill.setEnabled(false);
}

