#> volley:sim/interraction/interraction

# flag
scoreboard players set .alt vob.interract.handler 1
scoreboard players set .interact vob.interract.handler 1

# get vector
execute positioned 0. 0. 0. positioned ^ ^ ^.5 summon marker run function volley:sim/interraction/interraction/shootfacing

