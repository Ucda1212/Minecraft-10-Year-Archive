execute if score .credits zeronia.rollingcredits > .min zeronia.rollingcredits run scoreboard players add .credits zeronia.rollingcredits 1
execute if score .credits zeronia.rollingcredits >= .max zeronia.rollingcredits run function zeronia:credits/stop

#> Fade out the logo, then kill it
execute if score .credits zeronia.rollingcredits matches 2 run execute as @e[tag=zeronia.credits] run data merge entity @s {text_opacity:-127b,start_interpolation:-1,interpolation_duration:10}
execute if score .credits zeronia.rollingcredits matches 12 run execute as @e[tag=zeronia.credits] run data merge entity @s {text_opacity:127b}
execute if score .credits zeronia.rollingcredits matches 13 run execute as @e[tag=zeronia.credits] run data merge entity @s {text_opacity:26b,start_interpolation:-1,interpolation_duration:10}
execute if score .credits zeronia.rollingcredits matches 23 run execute as @e[tag=zeronia.credits] run kill @s

execute if score .credits zeronia.rollingcredits matches 23 run summon text_display -42 67.75 -18 {Rotation:[270F,0F],Tags:["zeronia.credits"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"Credits"}',background:16711680,shadow:1b,height:11,width:2}

execute if score .credits zeronia.rollingcredits matches 24 as @e[tag=zeronia.credits] run data merge entity @s {transformation:{translation:[0,10,0]},start_interpolation:-1,interpolation_duration:10}

execute if score .credits zeronia.rollingcredits matches 25 run summon text_display -42 67.3 -18 {Rotation:[270F,0F],Tags:["zeronia.credits","zeronia.credits.director"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:'{"text":"Directed by Pulluxx"}',height:11,width:2,background:16711680,shadow:1b}

execute if score .credits zeronia.rollingcredits matches 29 as @e[tag=zeronia.credits.director] run data merge entity @s {transformation:{translation:[0,10,0]},start_interpolation:-1,interpolation_duration:10}

execute if score .credits zeronia.rollingcredits matches 49 run summon text_display -42 62 -15 {Rotation:[270F,0F],Tags:["zeronia.credits","zeronia.credits.1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.8f,.8f,.8f]},text:'{"text":"3a_MoHolNT\\n5hax\\n7keyz\\nAandeel\\nAksiome\\nAnimema\\nApplles\\nBansed\\nBillignton\\nBrandShei\\nCalverin\\nCheckMC\\nChiefCo1\\nChipChase\\nChopper2112\\nChromatis\\nChubinsRainbow\\nChump_the_Lump\\nConnop\\nCosmicCortexSP\\nCreeper_Juice\\nCygnusGD\\nDelth\\nDemitriMaximoff\\nDominexis\\nDrSallan\\nEJPete\\nEd1ska\\nEdLePug\\nEdou_\\nElectroBleach\\nEroxen\\nErsatz_"}',background:16711680,shadow:1b,alignment:"left",height:15,width:2}

execute if score .credits zeronia.rollingcredits matches 49 run summon text_display -42 62 -17 {Rotation:[270F,0F],Tags:["zeronia.credits","zeronia.credits.2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.8f,.8f,.8f]},text:'{"text":"Evtema3\\nEyeCloud\\nFasading\\nFelix14_v2\\nFlamingosaurus\\nFlippyr\\nGeneralGimmy\\nGliuth\\nItsRishon\\nJarmzie\\nJiingy\\nJust_Vlad\\nKaiAF\\nKirill17\\nKragast\\nKralled\\nLeBleury\\nLeovardo\\nLimies\\nLucuma\\nLunaEclipse4304\\nLupik29\\nMaartin\\nMarilakos\\nMats3209\\nMiffenKop\\nMonochromatis\\nMorriis\\nMouese\\nMrTikva\\nMrinin_\\nNATHANlEL\\nNapkiinsA"}',background:16711680,shadow:1b,alignment:"left",height:15,width:2}

execute if score .credits zeronia.rollingcredits matches 49 run summon text_display -42 62 -19 {Rotation:[270F,0F],Tags:["zeronia.credits","zeronia.credits.3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.8f,.8f,.8f]},text:'{"text":"Neylz\\nPennes\\nPhantomEye\\nPilllager\\nPinkessi\\nPlagiatus\\nPvPqnda\\nQoco\\nQu1nten\\nQuackleb\\nResister\\nRisely\\nRobeens\\nS0gga\\nScorpionem\\nSimonDMCPlayer\\nSirboys\\nSlarox\\nSlender\\nSmartyAlek\\nSnakeRattler\\nSoccby\\nSpritzu\\nSpy_Guy1\\nStrongis13\\nStuffy\\nSupersette\\nSusJr\\nTado\\nTechno_Guy_KWP\\nTechnodono\\nTheTypicalMex\\nTheWorfer27"}',background:16711680,shadow:1b,alignment:"left",height:15,width:2}

execute if score .credits zeronia.rollingcredits matches 49 run summon text_display -42 62 -21 {Rotation:[270F,0F],Tags:["zeronia.credits","zeronia.credits.4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.8f,.8f,.8f]},text:'{"text":"The_Artist123\\nThunderie\\nTobies\\nTobikativ\\nTriLinder\\nTwelfthShield115\\nUrgle\\nVilder50\\nWybiea\\nYZEROgame\\nZenection\\nZimper\\nZubook\\naspookabie\\nbirrbo\\ncobra063\\ncxve\\ndigi_x3\\ndragonmaster95\\nflcme\\nmmooney\\npcgus\\nreking\\nsac11221\\nshurik204\\nsodapoppet\\ntiger_clood\\nxCaedes\\nxMJGold\\nzTxrbq\\n\\n\\n"}',background:16711680,shadow:1b,alignment:"left",height:15,width:2}

execute if score .credits zeronia.rollingcredits matches 50 as @e[tag=zeronia.credits.1] run data merge entity @s {transformation:{translation:[0,8,0]},start_interpolation:-1,interpolation_duration:10}
execute if score .credits zeronia.rollingcredits matches 55 as @e[tag=zeronia.credits.2] run data merge entity @s {transformation:{translation:[0,8,0]},start_interpolation:-1,interpolation_duration:10}
execute if score .credits zeronia.rollingcredits matches 60 as @e[tag=zeronia.credits.3] run data merge entity @s {transformation:{translation:[0,8,0]},start_interpolation:-1,interpolation_duration:10}
execute if score .credits zeronia.rollingcredits matches 65 as @e[tag=zeronia.credits.4] run data merge entity @s {transformation:{translation:[0,8,0]},start_interpolation:-1,interpolation_duration:10}

execute if score .credits zeronia.rollingcredits matches 34 run function zeronia:credits/land
execute if score .credits zeronia.rollingcredits matches 39 run function zeronia:credits/land
execute if score .credits zeronia.rollingcredits matches 60 run function zeronia:credits/land
execute if score .credits zeronia.rollingcredits matches 65 run function zeronia:credits/land
execute if score .credits zeronia.rollingcredits matches 70 run function zeronia:credits/land
execute if score .credits zeronia.rollingcredits matches 75 run function zeronia:credits/land

execute if score .credits zeronia.rollingcredits matches 90 run summon text_display -42 69.7 -18 {Rotation:[270F,0F],Tags:["zeronia.credits"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.4f,.4f,.4f]},text:'[{"text":"Credits made with "},{"color":"red","text":"❤"},{"text":" by Stuffy"}]',background:16711680,shadow:1b,height:1,width:2}

execute if score .credits zeronia.rollingcredits matches 80 run summon marker -42 77.3 -13.3 {Tags:["zeronia.credits.particle"]}
execute as @e[tag=zeronia.credits.particle] at @s run tp @s ~ ~ ~-.4
execute as @e[tag=zeronia.credits.particle] at @s run particle end_rod ~ ~ ~
execute as @e[tag=zeronia.credits.particle] at @s run particle cloud ~ ~ ~
execute as @e[tag=zeronia.credits.particle] at @s run particle end_rod ~ ~ ~.2
execute if score .credits zeronia.rollingcredits matches 98 run kill @e[type=marker,tag=zeronia.credits.particle]

execute if score .cooldown zeronia.rollingcredits matches 1.. run scoreboard players remove .cooldown zeronia.rollingcredits 1
execute if score .cooldown zeronia.rollingcredits matches 0 run function zeronia:credits/stop
