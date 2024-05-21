
## unpressure pressureplate
setblock -356 66 -192 air
setblock -356 66 -192 minecraft:light_weighted_pressure_plate
tp @s -352 71 -198
effect clear @s invisibility
tellraw @a[tag=bnsd.player] [{"text":"<!> ","bold": false},{"selector":"@s","bold":true,"color":"gold"},{"text":" finished!","bold": false}]
tag @s remove bnsd.player
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

## check for new record
scoreboard players operation @s bnsd.time = .time bnsd.main
execute if score @s bnsd.time < .record.t bnsd.recordtime run function bnsd:ingame/newrecord

title @s actionbar " "

## advancements
advancement grant @s only plagiatus:te/bronze
execute if score @s bnsd.hearts matches 3 run advancement grant @s only plagiatus:te/silver
execute if score @s bnsd.time matches ..900 run advancement grant @s only plagiatus:te/gold


## check if all players finished > reset game 
function bnsd:pregame/countplayers
execute if score .players bnsd.main matches 0 run function bnsd:ingame/reset
title @s times 10 70 20

