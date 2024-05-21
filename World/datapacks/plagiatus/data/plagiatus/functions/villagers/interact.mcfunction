execute unless entity @s[tag=plag.villager] run return 0

scoreboard players set #counter plag.tmp 1
scoreboard players set #total plag.tmp 6

execute store result score #r plag.tmp run function plagiatus:villagers/check_all

execute if score #r plag.tmp matches 1 as @p[tag=utils.interact.c] run function plagiatus:villagers/update
execute if score #r plag.tmp matches 0 as @p[tag=utils.interact.c] run tellraw @s [{"text": "You've already found this one.", "color": "dark_gray"}]