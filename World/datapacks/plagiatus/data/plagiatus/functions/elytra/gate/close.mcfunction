execute if score #gate plag.elytra.checkpoint matches ..0 run return 0

execute as @e[tag=plag.elytra.gate.left] at @s run tp @s -141 ~ ~
execute as @e[tag=plag.elytra.gate.right] at @s run tp @s -141 ~ ~

schedule function plagiatus:elytra/gate/schedule_close 4s replace
scoreboard players set #gate plag.elytra.checkpoint -1