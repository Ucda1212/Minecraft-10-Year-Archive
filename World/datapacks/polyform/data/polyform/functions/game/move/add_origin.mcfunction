tag @s add polyform.origin
execute at @s store result score @s polyform.order if entity @e[type=item_display, tag=!polyform.idling, distance=..1.1]
execute if score @s polyform.order matches 1 at @s run function polyform:game/move/calculate_external_direction
execute unless score @s polyform.order matches 1 at @s run function polyform:game/move/try_both
