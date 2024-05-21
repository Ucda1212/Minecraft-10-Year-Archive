execute as @e[type=#boom:mobs,tag=boom.mob] at @s run function boom:mob/_decrement
execute as @e[type=#boom:effects,tag=boom.effect] at @s run function boom:mob/_effects

scoreboard players add $seconds boom.timer 1
scoreboard players add @a[gamemode=adventure,tag=boom.playing] boom.timer 1

execute if score $counter boom.timer matches 1.. run scoreboard players remove $counter boom.timer 1
execute if score $counter boom.timer matches 0 run function boom:spawn/_calculate
execute if score $counter boom.timer matches 0 positioned 273 106 111 run function boom:spawn/_spawn