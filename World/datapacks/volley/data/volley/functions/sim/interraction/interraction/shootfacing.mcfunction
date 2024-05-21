#> volley:sim/interraction/interraction/shootfacing

execute store result score .sx vob.interract.handler run data get entity @s Pos[0] 1000
execute store result score .sy vob.interract.handler run data get entity @s Pos[1] 1000
execute store result score .sz vob.interract.handler run data get entity @s Pos[2] 1000

# execute if score .sy vob.interract.handler matches ..-1 run scoreboard players operation .sy vob.interract.handler *= #-1 vob.consts
# scoreboard players operation .sy vob.interract.handler *= #10 vob.data

scoreboard players set .sy vob.interract.handler 960

scoreboard players operation .sx vob.interract.handler /= #10 vob.data
scoreboard players operation .sz vob.interract.handler /= #10 vob.data

kill @s
