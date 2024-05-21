execute if score #gate plag.elytra.checkpoint matches 1 run return 0

execute as @e[tag=plag.elytra.gate.left] at @s run tp @s -137.5 ~ ~
execute as @e[tag=plag.elytra.gate.right] at @s run tp @s -143.5 ~ ~
fill -143 118 -7 -139 118 -3 air replace minecraft:andesite

scoreboard players set #gate plag.elytra.checkpoint 1