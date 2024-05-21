# predicates are too easy, who need them /j (I just burned out)
execute positioned ~1 ~ ~ if entity @e[type=item_display, tag=!polyform.idling, distance=..0.1] run tag @s add polyform.X
execute positioned ~1 ~ ~ as @e[type=item_display, tag=!polyform.idling, distance=..0.1] run function polyform:game/move/mark_external_x
execute positioned ~-1 ~ ~ if entity @e[type=item_display, tag=!polyform.idling, distance=..0.1] run tag @s add polyform.X
execute positioned ~-1 ~ ~ as @e[type=item_display, tag=!polyform.idling, distance=..0.1] run function polyform:game/move/mark_external_x1

execute positioned ~ ~ ~1 if entity @e[type=item_display, tag=!polyform.idling, distance=..0.1] run tag @s add polyform.Z
execute positioned ~ ~ ~1 as @e[type=item_display, tag=!polyform.idling, distance=..0.1] run function polyform:game/move/mark_external_z
execute positioned ~ ~ ~-1 if entity @e[type=item_display, tag=!polyform.idling, distance=..0.1] run tag @s add polyform.Z
execute positioned ~ ~ ~-1 as @e[type=item_display, tag=!polyform.idling, distance=..0.1] run function polyform:game/move/mark_external_z1
