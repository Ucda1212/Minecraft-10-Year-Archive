#> volley:sim/interraction/attack

# flag
scoreboard players set .alt vob.interract.handler 1
scoreboard players set .attack vob.interract.handler 1

# get vector
execute positioned 0. 0. 0. positioned ^ ^ ^.8 summon marker run function volley:sim/interraction/attack/shootfacing
