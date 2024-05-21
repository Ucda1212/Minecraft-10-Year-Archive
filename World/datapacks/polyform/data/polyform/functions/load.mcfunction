#this isn't my fault
scoreboard objectives add polyform.initialized dummy

execute unless score polyform. polyform.initialized matches 1 run function polyform:init

scoreboard players enable @a polyform.give_game
execute as @a unless score @s polyform.give_game = @s polyform.give_game run scoreboard players enable @s polyform.give_game