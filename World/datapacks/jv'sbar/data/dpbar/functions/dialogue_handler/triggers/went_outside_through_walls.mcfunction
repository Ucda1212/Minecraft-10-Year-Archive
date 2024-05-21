function dpbar:dialogue_handler/text/get_name

execute if score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/intruder/leave



scoreboard players add @s dpbar.times_visited 1
execute if score @s dpbar.times_annoyed >= max_annoyance dpbar.global run scoreboard players set @s dpbar.times_visited 10


execute store result score @s dpbar.last_left run time query gametime