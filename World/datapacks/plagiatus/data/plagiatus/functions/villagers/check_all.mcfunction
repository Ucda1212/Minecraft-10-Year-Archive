execute store result storage plag:tmp i int 1 run scoreboard players get #counter plag.tmp

execute store result score #r plag.tmp run function plagiatus:villagers/check with storage plag:tmp
execute if score #r plag.tmp matches 1 run return 1

scoreboard players add #counter plag.tmp 1
execute store result score #r plag.tmp if score #counter plag.tmp <= #total plag.tmp run function plagiatus:villagers/check_all
execute if score #r plag.tmp matches 1 run return 1
return 0