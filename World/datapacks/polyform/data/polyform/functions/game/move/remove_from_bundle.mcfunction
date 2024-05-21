$data remove entity @e[type=minecraft:marker,tag=polyform.processing, limit=1] data.bundle_content[{components:{"minecraft:custom_data":{id:$(id)}}}]
#tellraw @a[tag=polyform.debug] ["removed letter with id ", {"entity":"@s","nbt":"Item.components.\"minecraft:custom_data\".id"}]
tag @s remove survived