
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;

/**
 * Pigs => Piglet(Baby), Sow(Female), Hog(Male)
 */
val pigs as IItemStack[][IEntityDefinition] = {
    <entity:animania:sow_duroc>             : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_hampshire>         : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_large_black>       : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_large_white>       : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_old_spot>          : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_yorkshire>         : [<minecraft:bone> * 3, <pyrotech:hide_pig>],

    <entity:animania:hog_duroc>             : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_hampshire>         : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_large_black>       : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_large_white>       : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_old_spot>          : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_yorkshire>         : [<minecraft:bone> * 4, <pyrotech:hide_pig>]
};

/**
 * Goats => Kid(Baby), Doe(Female), Buck(Male)
 */
val goats as IItemStack[][IEntityDefinition] = {
    <entity:animania:doe_alpine>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_angora>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_fainting>          : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_kiko>              : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:doe_kinder>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:doe_nigerian_dwarf>    : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_gray>         ],
    <entity:animania:doe_pygmy>             : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_gray_light>   ],

    <entity:animania:buck_alpine>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_angora>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_fainting>         : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_kiko>             : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:buck_kinder>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:buck_nigerian_dwarf>   : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_gray>         ],
    <entity:animania:buck_pygmy>            : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_gray_light>   ]
};

/**
 * Cows => Calf(Baby), Cow(Female), Bull(Male)
 */
val cows as IItemStack[][IEntityDefinition] = {
    <entity:animania:cow_angus>             : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_friesian>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_hereford>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_highland>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_holstein>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_jersey>            : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_longhorn>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_mooshroom>         : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],

    <entity:animania:bull_angus>            : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_friesian>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_hereford>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_highland>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_holstein>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_jersey>           : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_longhorn>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_mooshroom>        : [<minecraft:bone> * 6, <pyrotech:pelt_cow>]
};

/**
 * Sheeps => Lamb(Baby), Ewe(Female), Ram(Male)
 */
val sheeps as IItemStack[][IEntityDefinition] = {
    <entity:animania:ewe_dorper>            : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>],
    <entity:animania:ewe_dorset>            : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_brown>],
    <entity:animania:ewe_friesian>          : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_black>],
    <entity:animania:ewe_jacob>             : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>],
    <entity:animania:ewe_merino>            : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>],
    <entity:animania:ewe_suffolk>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>],

    <entity:animania:ram_dorper>            : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_white>],
    <entity:animania:ram_dorset>            : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_brown>],
    <entity:animania:ram_friesian>          : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_black>],
    <entity:animania:ram_jacob>             : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_white>],
    <entity:animania:ram_merino>            : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_white>],
    <entity:animania:ram_suffolk>           : [<minecraft:bone> * 4, <pyrotech:pelt_sheep_white>]
};

/**
 * Chickens => Chick(Baby), Hen(Female), Rooster(Male)
 */
val chickens as IItemStack[][IEntityDefinition] = {
    <entity:animania:hen_leghorn>               : [<minecraft:bone> * 1],
    <entity:animania:hen_orpington>             : [<minecraft:bone> * 1],
    <entity:animania:hen_plymouth_rock>         : [<minecraft:bone> * 1],
    <entity:animania:hen_rhode_island_red>      : [<minecraft:bone> * 1],
    <entity:animania:hen_wyandotte>             : [<minecraft:bone> * 1],

    <entity:animania:rooster_leghorn>           : [<minecraft:bone> * 2],
    <entity:animania:rooster_orpington>         : [<minecraft:bone> * 2],
    <entity:animania:rooster_plymouth_rock>     : [<minecraft:bone> * 2],
    <entity:animania:rooster_rhode_island_red>  : [<minecraft:bone> * 2],
    <entity:animania:rooster_wyandotte>         : [<minecraft:bone> * 2]
};

function addDrops(entities as IItemStack[][IEntityDefinition], event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    for entity, items in entities {
        if (!isNull(event.entity.definition) && event.entity.definition.name == entity.name) {
            for item in items {
                event.addItem(item);
            }
        }
        entity.removeDrop(<minecraft:leather>);
    }
}

events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if (isNull(event.entity.world) || event.entity.world.isRemote()) {
        return;
	}

    addDrops(pigs, event);
    addDrops(goats, event);
    addDrops(cows, event);
    addDrops(sheeps, event);
    addDrops(chickens, event);

});
