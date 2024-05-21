kill @e[type=minecraft:item, distance=..1, limit=26, sort=random, nbt={Item:{components:{"minecraft:custom_data":{define_move:true}}}}]
data modify entity @e[type=minecraft:item, distance=..0.5, limit=1, nbt={Item:{components:{"minecraft:custom_data":{define_move:true}}}}] Owner set from entity @p UUID
scoreboard players reset @s polyform.bundle
clear @s bundle