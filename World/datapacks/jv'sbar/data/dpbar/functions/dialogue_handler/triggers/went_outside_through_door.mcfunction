function dpbar:dialogue_handler/text/get_name



execute store result score @s dpbar.last_left run time query gametime
scoreboard players operation @s dpbar.last_left -= @s dpbar.last_entered
scoreboard players operation @s dpbar.last_left /= 20 dpbar.const

execute if score @s dpbar.times_annoyed >= max_annoyance dpbar.global run scoreboard players set @s dpbar.times_annoyed 10

function dpbar:dialogue_handler/ai/bartender/last_annoyance

execute unless score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/new_comer/guest/leave
execute if score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/guest/leave

scoreboard players add @s dpbar.times_visited 1


execute store result score @s dpbar.last_left run time query gametime
execute if score @s dpbar.times_annoyed >= max_annoyance dpbar.global run scoreboard players set @s dpbar.times_annoyed 10

