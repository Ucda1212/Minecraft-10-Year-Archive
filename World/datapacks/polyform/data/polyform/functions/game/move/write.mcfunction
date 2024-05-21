scoreboard players reset @s polyform.next
scoreboard players enable @s polyform.next

tag @s add polyform.calculating_word
scoreboard players set Temp. polyform.score 0
scoreboard players set Word. polyform.score 0

execute as @e[type=item_display, tag=polyform.letter] if score @s polyform.identifier = Temp. polyform.identifier at @s run function polyform:game/move/write_1

execute if entity @a[tag=polyform.x2_word, tag=!polyform.x3_word] run scoreboard players operation Temp. polyform.score *= 2. polyform.score
execute if entity @a[tag=polyform.x3_word] run scoreboard players operation Temp. polyform.score *= 3. polyform.score
title @s actionbar [{"text": "+"},{"score": {"name": "Temp.","objective": "polyform.score"}}]

scoreboard players operation @s polyform.score += Temp. polyform.score
execute if score Temp. polyform.score matches 0 run function polyform:game/move/update_bundle

tag @s remove polyform.calculating_word
tag @s remove polyform.x2_word
tag @s remove polyform.x3_word
scoreboard players reset @s polyform.length
tag @e[type=interaction, tag=polyform.dynamic] add polyform.static
tag @e[type=interaction, tag=polyform.dynamic] remove polyform.dynamic
tag @e[tag=polyform.origin, type=item_display] remove polyform.origin
execute unless entity @e[type=item_display, tag=polyform.origin] as @e[type=interaction, tag=polyform.static] at @s unless entity @e[type=item_display, tag=polyform.idling, distance=..0.3] store result entity @s Pos[1] double 0.001 run scoreboard players get Temp. polyform.heigh
