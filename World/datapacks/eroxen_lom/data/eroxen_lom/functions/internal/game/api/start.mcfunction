scoreboard players set .game_on eroxen_lom.x 1
function eroxen_lom:api/randomise
data merge entity @e[type=item_display,tag=eroxen_lom.billboard,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{scale:[0f,0f,0f]}}
schedule function eroxen_lom:internal/game/internal/clock 1t replace

execute positioned -148 67 176 run tellraw @a[distance=..10] {"text":"","extra":[{"text":"=========================","color":"light_purple"},{"text":"\n|| ","color":"light_purple"},{"text":"Eroxen's Lights Out Manor","color":"gold"},{"text":" ||\n","color":"light_purple"},{"text":"=========================\n","color":"light_purple"},{"text":"Throw Snowballs at the windows\nto toggle the lights in all\nadjacent rooms. Turn off all\nlights to win!","color":"yellow"}]}