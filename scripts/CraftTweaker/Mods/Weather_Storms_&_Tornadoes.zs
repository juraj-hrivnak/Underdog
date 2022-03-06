
#modloaded weather2
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

// Wind Vane
recipes.addShaped(<weather2:wind_vane> * 2,
  [[null            , null            , null             ],
   [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel> ],
   [null            , <ore:ingotSteel>, null             ]]);

// Anemometer
recipes.addShaped(<weather2:anemometer> * 2,
  [[null            , <ore:stickSteel>, null             ],
   [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel> ],
   [null            , <ore:ingotSteel>, null             ]]);

// Removing Weather Item
rh(<weather2:weather_item>);

val rainTank = <forestry:raintank> | <simpledifficulty:rain_collector>;

// Tornado Sensor
recipes.addShapedMirrored(<weather2:tornado_sensor> * 2,
  [[<ore:wireCopper>    , <ore:wireCopper>, <ore:wireCopper>      ],
   [<weather2:wind_vane>, rainTank        , <weather2:anemometer> ],
   [<ore:plateSteel>    , <ore:plateSteel>, <ore:plateSteel>      ]]);

// Weather Radar
recipes.addShaped(<weather2:weather_forecast>,
  [[<cyclicmagic:block_screen>, null            ],
   [<weather2:tornado_sensor> , <ore:wireCopper>]]);

// Siren
recipes.addShaped(<weather2:tornado_siren>,
  [[null                     , <ore:plateSteel>, <ore:plateSteel>   ],
   [<weather2:tornado_sensor>, <ore:motor>     , <ore:dustRedstone> ]]);

// Manual Siren
recipes.addShaped(<weather2:tornado_siren_manual>,
  [[<ore:plateSteel>, <ore:plateSteel>   ],
   [<ore:motor>     , <ore:dustRedstone> ]]);
