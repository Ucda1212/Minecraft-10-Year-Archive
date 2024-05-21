

execute if entity @s[gamemode=!spectator,tag=!dpbar.standing_in_the_doorway] positioned 317 84 370 align xz if entity @s[dz=1,dx=2,dy=2] run function dpbar:relativity_check/went_through_door

execute if entity @s[gamemode=!spectator,tag=dpbar.standing_in_the_doorway,tag=!dpbar.inside] positioned 319 84 362 align xz if entity @s[dx=11,dz=14,dy=5] positioned 317 84 370 align xz unless entity @s[dz=1,dx=2,dy=2] run function dpbar:relativity_check/went_inside_through_door
execute if entity @s[gamemode=!spectator,tag=dpbar.standing_in_the_doorway,tag=dpbar.inside] positioned 319 84 362 align xz unless entity @s[dx=11,dz=14,dy=5] positioned 317 84 370 align xz unless entity @s[dz=1,dx=2,dy=2] run function dpbar:relativity_check/went_outside_through_door

execute if entity @s[gamemode=!spectator,tag=!dpbar.standing_in_the_doorway,tag=!dpbar.inside] positioned 319 84 362 align xz if entity @s[dx=11,dz=14,dy=5] run function dpbar:relativity_check/went_inside_through_walls
execute if entity @s[gamemode=!spectator,tag=!dpbar.standing_in_the_doorway,tag=dpbar.inside] positioned 319 84 362 align xz unless entity @s[dx=11,dz=14,dy=5] run function dpbar:relativity_check/went_outside_through_walls

execute positioned 319 84 362 align xz if entity @s[gamemode=!spectator] align xz unless entity @s[dx=11,dz=14,dy=5] positioned 317 84 370 align xz unless entity @s[dz=1,dx=2,dy=2] run function dpbar:relativity_check/reset


execute if score @s dpbar.times_annoyed matches 3.. run scoreboard players add @s[tag=dpbar.inside] dpbar.annoyance_timer 1
execute if score @s[tag=dpbar.inside] dpbar.annoyance_timer = annoyance_timer dpbar.global run function dpbar:dialogue_handler/ai/bartender/forget_annoyance
execute if score @s dpbar.annoyance_timer >= annoyance_timer dpbar.global run scoreboard players reset @s dpbar.annoyance_timer

tag @s add dpbar.tmp






function dpbar:dialogue_handler/text/get_name
execute unless predicate dpbar:look_at_human if score @s dpbar.look_timer_1 matches 1.. run scoreboard players remove @s dpbar.look_timer_1 1

# execute unless predicate dpbar:look_at_human as @e[tag=dpbar.result] run tellraw just_Vlad [{"selector":"@p[tag=dpbar.tmp4]"},{"text":" hi2"}]
# execute if entity @s[tag=dpbar.tmp4] run tellraw just_Vlad [{"selector":"@p[tag=dpbar.tmp4]"},{"text":" hi2"}]
# execute if entity @s[tag=dpbar.tmp4] unless predicate dpbar:look_at_human as @e[tag=dpbar.result] run tellraw just_Vlad [{"selector":"@p[tag=dpbar.tmp4]"},{"text":" hi2"}]
# execute if entity @s[tag=dpbar.tmp4] unless predicate dpbar:look_at_human as @e[tag=dpbar.result] if score @s dpbar.tmp = @p[tag=dpbar.tmp4] dpbar.id run tellraw just_Vlad [{"selector":"@p[tag=dpbar.tmp4]"},{"text":" hi3"}]
execute if entity @s[tag=dpbar.tmp4] unless predicate dpbar:look_at_human as @e[tag=dpbar.result] run function dpbar:dialogue_handler/ai/other_guests/look_away with storage dpbar:storage

scoreboard players reset @s dpbar.id
tag @e[tag=dpbar.human,distance=..10] add dpbar.candidate
execute unless predicate dpbar:look_at_human run tag @s remove dpbar.tmp4
execute if predicate dpbar:look_at_human run tag @s add dpbar.tmp4
execute if predicate dpbar:look_at_human run function dpbar:filter/find




# execute if predicate dpbar:look_at_result run tellraw Just_Vlad {"selector":"@e[tag=dpbar.result]"}
# scoreboard players reset n dpbar.id
# execute if predicate dpbar:look_at_human unless predicate dpbar:look_at_found run function dpbar:dialogue_handler/ai/other_guests/check


execute if predicate dpbar:look_at_result as @e[tag=dpbar.result,limit=1,sort=nearest] run function dpbar:dialogue_handler/ai/other_guests/look with storage dpbar:storage



tag @s remove dpbar.tmp
# tag @e remove dpbar.checked
# tag @e remove dpbar.candidate
# tag @e remove dpbar.found
# execute unless predicate dpbar:look_at_monsterijust run function dpbar:dialogue_handler/ai/other_guests/monsterijust/look_away
# execute if predicate dpbar:look_at_monsterijust run function dpbar:dialogue_handler/ai/other_guests/monsterijust/look
# execute if predicate dpbar:look_at_bartender run function dpbar:dialogue_handler/ai/bartender/look






# execute store result score @s dpbar.pitch run data get entity @s Rotation[1] 1


