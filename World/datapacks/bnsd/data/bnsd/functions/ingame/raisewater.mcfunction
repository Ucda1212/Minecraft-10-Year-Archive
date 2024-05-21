execute unless score .waterlevel bnsd.main matches 19.. as @e[type=minecraft:armor_stand,tag=bnsd.waterlevel] at @s run fill -360 ~ -209 -388 ~ -188 water replace air

## prepare for next rise 
scoreboard players add .waterlevel bnsd.main 1
execute unless score .waterlevel bnsd.main matches 19.. as @e[type=minecraft:armor_stand,tag=bnsd.waterlevel] at @s run tp @s ~ ~1 ~
execute unless score .waterlevel bnsd.main matches 19.. run schedule function bnsd:ingame/raisewater 110t