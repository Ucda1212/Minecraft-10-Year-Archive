scoreboard players add .time bnsd.main 1
## update time
execute as @p[tag=bnsd.player] run function bnsd:calculatetime 




## as / at player
execute as @a[tag=bnsd.player] at @s run function bnsd:ingame/playertick