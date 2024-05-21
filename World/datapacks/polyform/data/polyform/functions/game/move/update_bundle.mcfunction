scoreboard players operation Temp. polyform.score_previous = @s polyform.score
scoreboard players operation Temp. polyform.score_previous -= @s polyform.score_previous
execute unless score @s polyform.score = @s polyform.score_previous run function polyform:game/update_bundle with entity @e[type=marker, tag=polyform.processing, limit=1] data
tag @s add polyform.rolling
title @s actionbar [{"text": "Score: "},{"score": {"name": "@s","objective": "polyform.score_previous"}}," → ",{"score": {"name": "@s","objective": "polyform.score"}}," (+",{"score": {"name": "Temp.","objective": "polyform.score_previous"}}, ")"]
tellraw @a[tag=polyform.current_game] [{"selector":"@s", "color": "gray"}, {"text": " has "},{"score": {"name": "@s","objective": "polyform.score"}}, " points"]
execute if score @s polyform.score_previous = @s polyform.score run function polyform:game/skip
scoreboard players reset @s polyform.next