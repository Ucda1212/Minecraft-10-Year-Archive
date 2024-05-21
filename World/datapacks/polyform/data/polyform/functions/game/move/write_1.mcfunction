execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier at @s run function polyform:game/move/calculate_score
execute as @e[type=item_display, tag=polyform.external] if score @s polyform.identifier = Temp. polyform.identifier at @s run function polyform:game/move/calculate_score
scoreboard players operation Temp. polyform.score += @e[type=item_display, tag=polyform.counted] polyform.score

execute as @e[tag=polyform.counted] run scoreboard players reset @s polyform.identifier
tag @e[tag=polyform.counted] remove polyform.counted
