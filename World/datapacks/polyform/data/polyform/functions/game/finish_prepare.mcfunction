
execute as @e[type=marker, limit=1, tag=polyform.processing] at @s positioned ~-8 ~ ~-8 run function polyform:game/finish

execute as @a if score @s polyform.identifier = Temp. polyform.identifier if score @s polyform.score > Temp.1 polyform.score run scoreboard players operation Temp.1 polyform.score = @s polyform.score
execute store result storage polyform win_score int 1 run scoreboard players get Temp.1 polyform.score

execute as @a[tag=polyform.temp] if score @s polyform.score = Temp.1 polyform.score run tag @s add winner
execute at @e[type=marker,tag=polyform.table, limit=1, sort=nearest] run function polyform:game/finish_list
tag @a[tag=winner] remove winner
data remove storage minecraft:polyform win_score

execute as @a if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/finish_clear
