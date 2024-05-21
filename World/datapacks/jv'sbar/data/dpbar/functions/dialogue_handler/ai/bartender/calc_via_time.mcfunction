scoreboard players operation @s dpbar.last_entered -= @s dpbar.last_left
scoreboard players operation @s dpbar.last_entered /= 20 dpbar.const

execute if score @s dpbar.last_entered >= memory_1 dpbar.global run scoreboard players remove @s dpbar.times_annoyed 1
execute if score @s dpbar.last_entered >= memory_2 dpbar.global run scoreboard players remove @s dpbar.times_annoyed 1
execute if score @s dpbar.last_entered >= memory_3 dpbar.global run scoreboard players remove @s dpbar.times_annoyed 1
execute if score @s dpbar.last_entered >= memory_4 dpbar.global run scoreboard players remove @s dpbar.times_annoyed 1