tag @e[sort=nearest,tag=dpbar.human,tag=!dpbar.checked,limit=1] add dpbar.candidate
# tag @e[sort=random,tag=dpbar.human] add dpbar.checked

execute store result score @e[tag=dpbar.candidate,tag=!dpbar.checked] dpbar.id run scoreboard players add n dpbar.id 1

execute unless predicate dpbar:look_at_candidate run tag @e[tag=dpbar.candidate,tag=!dpbar.checked] add dpbar.checked
execute if predicate dpbar:look_at_candidate run scoreboard players operation @s dpbar.id = @e[tag=dpbar.candidate,tag=!dpbar.checked,limit=1] dpbar.id
execute if predicate dpbar:look_at_candidate run return run tag @e[tag=dpbar.candidate,tag=!dpbar.checked] add dpbar.found





execute if entity @e[tag=dpbar.human,tag=!dpbar.checked] run function dpbar:dialogue_handler/ai/other_guests/check