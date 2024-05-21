function dpbar:dialogue_handler/text/get_name



execute store result score @s dpbar.last_entered run time query gametime
function dpbar:dialogue_handler/ai/bartender/calc_via_time
function dpbar:dialogue_handler/ai/bartender/last_annoyance

# tellraw @s {"score":{"name":"@s","objective":"dpbar.last_entered"}}

execute if score @s dpbar.times_annoyed matches 1.. run scoreboard players remove @s dpbar.times_annoyed 1
execute if score @s dpbar.times_annoyed matches ..-1 run scoreboard players set @s dpbar.times_annoyed 0



execute unless score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/new_comer/guest/first_meet

execute if score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/guest/enter


scoreboard players add @s dpbar.times_visited 1


execute store result score @s dpbar.last_entered run time query gametime
advancement grant @s only dpbar:local_celebrity resident_2
