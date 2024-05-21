$execute store success score Temp.3 polyform.score run data get entity @e[type=minecraft:marker, limit=1, tag=polyform.processing] data.bundle_content[$(tile_count)]
execute if score Temp.3 polyform.score matches 0 run function polyform:game/finish_prepare
execute if score Temp.3 polyform.score matches 0 run return 1

$tag @e[type=item, limit=$(tile_count), sort=random, distance=..0.5] add survived
kill @e[type=minecraft:item, distance=..0.5, tag=!survived, nbt={Item:{components:{"minecraft:custom_data":{}}}}]
execute as @e[type=minecraft:item, distance=..0.5, tag=survived] run data modify entity @s Owner set from entity @p UUID

execute as @e[type=minecraft:item, tag=survived] run function polyform:game/move/remove_from_bundle with entity @s Item.components."minecraft:custom_data"

scoreboard players reset @s polyform.bundle

clear @s bundle
loot give @s loot polyform:bundle

