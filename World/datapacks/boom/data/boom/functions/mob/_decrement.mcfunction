scoreboard players remove @s boom.explode 1
execute if score @s boom.explode matches 15 run data modify entity @s CustomName set value "{\"text\":\"15...\",\"color\":\"dark_green\"}"
execute if score @s boom.explode matches 14 run data modify entity @s CustomName set value "{\"text\":\"14...\",\"color\":\"dark_green\"}"
execute if score @s boom.explode matches 13 run data modify entity @s CustomName set value "{\"text\":\"13...\",\"color\":\"dark_green\"}"
execute if score @s boom.explode matches 12 run data modify entity @s CustomName set value "{\"text\":\"12...\",\"color\":\"dark_green\"}"
execute if score @s boom.explode matches 11 run data modify entity @s CustomName set value "{\"text\":\"11...\",\"color\":\"dark_green\"}"
execute if score @s boom.explode matches 10 run data modify entity @s CustomName set value "{\"text\":\"10...\",\"color\":\"green\"}"
execute if score @s boom.explode matches 9 run data modify entity @s CustomName set value "{\"text\":\"9...\",\"color\":\"green\"}"
execute if score @s boom.explode matches 8 run data modify entity @s CustomName set value "{\"text\":\"8...\",\"color\":\"green\"}"
execute if score @s boom.explode matches 7 run data modify entity @s CustomName set value "{\"text\":\"7...\",\"color\":\"green\"}"
execute if score @s boom.explode matches 6 run data modify entity @s CustomName set value "{\"text\":\"6...\",\"color\":\"green\"}"
execute if score @s boom.explode matches 5 run data modify entity @s CustomName set value "{\"text\":\"5 . . .\",\"color\":\"yellow\"}"
execute if score @s boom.explode matches 4 run data modify entity @s CustomName set value "{\"text\":\"4 ...\",\"color\":\"yellow\"}"
execute if score @s boom.explode matches 3 run data modify entity @s CustomName set value "{\"text\":\"3...\",\"color\":\"gold\"}"
execute if score @s boom.explode matches 2 run data modify entity @s CustomName set value "{\"text\":\"2!\",\"color\":\"red\",\"bold\":true}"
execute if score @s boom.explode matches 1 run data modify entity @s CustomName set value "{\"text\":\"1!!!\",\"color\":\"dark_red\",\"bold\":true,\"underlined\":true}"


execute as @s[tag=boom.skeleton] if score @s boom.explode matches 2 run schedule function boom:mob/look_at_player 18t replace
execute as @s[tag=boom.pillager] if score @s boom.explode matches 2 run schedule function boom:mob/look_at_player 18t replace
execute as @s[tag=boom.skeleton] if score @s boom.explode matches 1 run function boom:mob/shoot_arrow
execute as @s[tag=boom.pillager] if score @s boom.explode matches 1 run function boom:mob/shoot_explosive_arrow
execute as @s[tag=boom.panda] if score @s boom.explode matches 1 run function boom:mob/dash
execute as @s[tag=boom.goat] if score @s boom.explode matches 1 run function boom:mob/jump

execute if score @s boom.explode matches 0 run function boom:mob/_explode