# executes as each one letter

execute unless entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin] run function polyform:game/move/add_origin
execute if entity @e[type=item_display, tag=polyform.idling, tag=polyform.origin] if entity @s[tag=!polyform.origin] at @s run function polyform:game/move/calculate_direction
execute if entity @e[type=item_display, tag=polyform.idling, tag=polyform.X] run tag @s[tag=!polyform.X] add polyform.X
execute if entity @e[type=item_display, tag=polyform.idling, tag=polyform.Z] run tag @s[tag=!polyform.Z] add polyform.Z
execute as @s[tag=polyform.origin] at @s run function polyform:game/move/modify_main_origin

execute as @s[tag=polyform.X] at @s run function polyform:game/move/try_x
execute as @s[tag=polyform.Z] at @s run function polyform:game/move/try_z

execute as @s[tag=polyform.origin] unless entity @e[type=item_display, tag=!polyform.origin, tag=polyform.idling] unless entity @e[type=item_display, tag=!polyform.origin, tag=polyform.external] run function polyform:game/move/clear_xz

# hide when placing a word (quick and ≈reliable way)
scoreboard players operation Temp.2 polyform.heigh = Temp. polyform.heigh
execute if entity @e[type=item_display, tag=polyform.origin] run scoreboard players remove Temp.2 polyform.heigh 200
execute as @e[type=interaction, tag=polyform.static] at @s unless entity @e[type=item_display, tag=polyform.idling, distance=..0.3] store result entity @s Pos[1] double 0.001 run scoreboard players get Temp.2 polyform.heigh

# clear crosses
execute unless entity @e[type=item_display, tag=polyform.origin] run kill @e[type=interaction, tag=polyform.bound_to_origin]
