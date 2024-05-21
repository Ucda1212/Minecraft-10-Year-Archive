scoreboard players add .billboard_rot eroxen_lom.x 1
execute if score .billboard_rot eroxen_lom.x matches 4.. run scoreboard players set .billboard_rot eroxen_lom.x 0

execute if score .billboard_rot eroxen_lom.x matches 0 run data merge entity @e[type=item_display,tag=eroxen_lom.billboard,distance=..10,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f]}}
execute if score .billboard_rot eroxen_lom.x matches 1 run data merge entity @e[type=item_display,tag=eroxen_lom.billboard,distance=..10,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0.707f,0f,0.707f]}}
execute if score .billboard_rot eroxen_lom.x matches 2 run data merge entity @e[type=item_display,tag=eroxen_lom.billboard,distance=..10,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,1f,0f,0f]}}
execute if score .billboard_rot eroxen_lom.x matches 3 run data merge entity @e[type=item_display,tag=eroxen_lom.billboard,distance=..10,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0.707f,0f,-0.707f]}}

execute if score .game_on eroxen_lom.x matches 0 if entity @a[distance=..4] run function eroxen_lom:internal/game/api/start
execute if score .game_on eroxen_lom.x matches 1 unless entity @a[distance=..16] run function eroxen_lom:internal/game/api/stop