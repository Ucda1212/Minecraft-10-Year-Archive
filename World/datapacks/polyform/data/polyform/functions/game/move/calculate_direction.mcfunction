# predicates are too easy, who need them /j (I just burned out)
execute positioned ~1 ~ ~ if entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin, distance=..0.1] run tag @s add polyform.X
execute positioned ~-1 ~ ~ if entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin, distance=..0.1] run tag @s add polyform.X

execute positioned ~ ~ ~1 if entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin, distance=..0.1] run tag @s add polyform.Z
execute positioned ~ ~ ~-1 if entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin, distance=..0.1] run tag @s add polyform.Z

execute as @s[tag=polyform.X] run tag @e[type=item_display, tag=polyform.idling, tag=polyform.origin, limit=1] add polyform.X
execute as @s[tag=polyform.Z] run tag @e[type=item_display, tag=polyform.idling, tag=polyform.origin, limit=1] add polyform.Z
