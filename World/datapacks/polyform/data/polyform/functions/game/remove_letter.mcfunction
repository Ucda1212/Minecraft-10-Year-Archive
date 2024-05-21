# edge cases
execute if block ~ ~-0.5 ~ light_gray_concrete if entity @e[type=item_display, tag=polyform.idling, distance=0.3..] run return 1
execute as @e[type=item_display, distance=..0.3, tag=polyform.X] at @s positioned ~1 ~ ~ if entity @e[type=item_display,limit=1, distance=..0.1, tag=polyform.idling] positioned ~-2 ~ ~ if entity @e[type=item_display,limit=1, distance=..0.1, tag=polyform.idling] run return 1
execute as @e[type=item_display, distance=..0.3, tag=polyform.Z] at @s positioned ~ ~ ~1 if entity @e[type=item_display,limit=1, distance=..0.1, tag=polyform.idling] positioned ~ ~ ~-2 if entity @e[type=item_display,limit=1, distance=..0.1, tag=polyform.idling] run return 1
execute as @e[type=item_display, distance=..0.3, tag=polyform.origin, tag=polyform.X] at @s positioned ~1 ~ ~ if entity @e[type=item_display,limit=1, distance=..0.1] positioned ~-2 ~ ~ if entity @e[type=item_display,limit=1, distance=..0.1] run return 1
execute as @e[type=item_display, distance=..0.3, tag=polyform.origin, tag=polyform.Z] at @s positioned ~ ~ ~1 if entity @e[type=item_display,limit=1, distance=..0.1] positioned ~ ~ ~-2 if entity @e[type=item_display,limit=1, distance=..0.1] run return 1

# drop item
summon item ~ ~0.05 ~ {Tags:["polyform.new"], Item:{"id":"minecraft:player_head",Count:1b, components:{"minecraft:profile":{ id: [I; 1374579730, 1042370034, -1587386351, -1172036165], properties: [{ name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdmOWNlMmFmY2Q4OTc4YmI0YmRhZmEyYmE5Yjc3YjE4YmFmNDIzMzA1ZTYyZmRiMGM3YmQ4YmQ1YjFiZCJ9fX0=" }] }}}, Motion:[0.0d, 0.1d, 0.0d]}
execute at @s at @e[type=interaction, tag=polyform.table, nbt={attack:{}}, limit=1, sort=nearest] run data modify entity @e[type=item, limit=1, tag=polyform.new] Item.components set from entity @e[type=item_display, tag=polyform.letter,limit=1, sort=nearest] item.components
data modify entity @e[type=item, limit=1, tag=polyform.new] Owner set from entity @s UUID
execute at @s at @e[type=interaction, tag=polyform.table, nbt={attack:{}}, limit=1, sort=nearest] run kill @e[type=item_display, tag=polyform.letter,limit=1, sort=nearest]

scoreboard players remove @s polyform.length 1

# EXECUTES IN 2 STEPS!!! Not for deduplication
execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/move/interaction_manager
execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/move/interaction_manager
execute unless entity @e[type=item_display, tag=polyform.origin] as @e[type=interaction, tag=polyform.static] at @s unless entity @e[type=item_display, tag=polyform.idling, distance=..0.3] store result entity @s Pos[1] double 0.001 run scoreboard players get Temp. polyform.heigh

execute unless entity @e[type=item_display, tag=polyform.origin] as @e[type=item_display, tag=polyform.external] run function polyform:game/move/unmark_external

execute unless entity @e[type=item_display, tag=polyform.origin] run kill @e[type=interaction, tag=polyform.bound_to_origin]