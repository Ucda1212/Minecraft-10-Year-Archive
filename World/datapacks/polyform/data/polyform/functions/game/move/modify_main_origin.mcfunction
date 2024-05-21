execute as @s[tag=polyform.X] positioned ~ ~ ~-1 run kill @e[type=interaction, distance=..0.3, tag=!polyform.static]
execute as @s[tag=polyform.X] positioned ~ ~ ~1 run kill @e[type=interaction, distance=..0.3, tag=!polyform.static]

execute as @s[tag=polyform.Z] positioned ~-1 ~ ~ run kill @e[type=interaction, distance=..0.3, tag=!polyform.static]
execute as @s[tag=polyform.Z] positioned ~1 ~ ~ run kill @e[type=interaction, distance=..0.3, tag=!polyform.static]

execute as @s[tag=!polyform.X,tag=!polyform.Z] run function polyform:game/move/try_both

# 2
execute as @s[tag=polyform.X] positioned ~1 ~ ~ as @e[type=item_display, tag=!polyform.idling, tag=!polyform.external, distance=..0.1] run function polyform:game/move/mark_external_x
execute as @s[tag=polyform.X] positioned ~-1 ~ ~ as @e[type=item_display, tag=!polyform.idling, tag=!polyform.external, distance=..0.1] run function polyform:game/move/mark_external_x1
execute as @s[tag=polyform.Z] positioned ~ ~ ~1 as @e[type=item_display, tag=!polyform.idling, tag=!polyform.external, distance=..0.1] run function polyform:game/move/mark_external_z
execute as @s[tag=polyform.Z] positioned ~ ~ ~-1 as @e[type=item_display, tag=!polyform.idling, tag=!polyform.external, distance=..0.1] run function polyform:game/move/mark_external_z1