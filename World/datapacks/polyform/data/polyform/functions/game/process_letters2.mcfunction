# quick and DIRTY random (I have no time to make it properly .·´¯`(>▂<)´¯`·. )
execute as @e[type=minecraft:item, distance=..1, limit=7, sort=random, nbt={Item:{components:{"minecraft:custom_data":{game:true}}}}] run tag @s add survived
kill @e[type=minecraft:item, tag=!survived, distance=..0.5, nbt={Item:{components:{"minecraft:custom_data":{game:true}}}}]
execute as @e[type=minecraft:item, distance=..1, limit=7, nbt={Item:{components:{"minecraft:custom_data":{game:true}}}}] run data modify entity @s Owner set from entity @p UUID

# удаляем из банка
execute as @e[tag=survived, limit=7] run function polyform:game/move/remove_from_bundle with entity @s Item.components."minecraft:custom_data"

clear @s bundle
loot give @s loot polyform:bundle

function polyform:game/move/next_move