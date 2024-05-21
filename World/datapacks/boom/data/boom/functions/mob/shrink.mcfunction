execute store result score $slime boom run data get entity @s Size
execute if score $slime boom matches 1 run return 1
execute if score $slime boom matches 2 run data modify entity @s Size set value 1
execute if score $slime boom matches 3 run data modify entity @s Size set value 2
execute if score $slime boom matches 4 run data modify entity @s Size set value 3
scoreboard players remove @s boom.radius 1