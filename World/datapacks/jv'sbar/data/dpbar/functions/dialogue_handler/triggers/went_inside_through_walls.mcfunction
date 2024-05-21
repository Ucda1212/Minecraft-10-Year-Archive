function dpbar:dialogue_handler/text/get_name

execute unless score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/new_comer/intruder/first_meet

execute if score @s dpbar.times_visited matches 1.. run function dpbar:dialogue_handler/text/bartender/intruder/enter

scoreboard players add @s dpbar.times_visited 1
scoreboard players add @s dpbar.times_annoyed 1


execute store result score @s dpbar.last_entered run time query gametime
advancement grant @s only dpbar:local_celebrity resident_2
