#> volley:sim/interraction/detect

# setup
scoreboard players set .alt vob.interract.handler 0
scoreboard players set .attack vob.interract.handler 0
scoreboard players set .interact vob.interract.handler 0

# detect
execute on attacker at @s run function volley:sim/interraction/attack
execute if score .attack vob.interract.handler matches 0 on target at @s run function volley:sim/interraction/interraction

# reset
execute if score .attack vob.interract.handler matches 1 run data remove entity @s attack
execute if score .interact vob.interract.handler matches 1 run data remove entity @s interaction
