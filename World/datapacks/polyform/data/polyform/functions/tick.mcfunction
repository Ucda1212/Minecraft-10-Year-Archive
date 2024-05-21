# Main tick

# Give game placer
execute as @a[scores={polyform.joined=1..}] run scoreboard players enable @s polyform.give_game
execute as @a if score @s polyform.give_game matches 1 run function polyform:give_egg

# Place&Remove table
execute as @e[type=marker, tag=polyform.place_table, limit=1, tag=!polyform.table] at @s if entity @e[type=marker, tag=polyform.table, distance=..20] run kill @s
execute as @e[type=marker, tag=polyform.place_table, limit=1, tag=!polyform.table] at @s run function polyform:place_table
execute as @e[type=marker, tag=polyform.remove_table] at @s at @e[type=marker, tag=polyform.table, limit=1, sort=nearest] positioned ~-8 ~ ~-8 run function polyform:remove_table

# Game ticks
execute as @e[type=marker, tag=polyform.table, tag=!polyform.started] at @s positioned ~-8 ~ ~-8 run function polyform:prepare/tick
execute as @e[type=marker, tag=polyform.table, tag=polyform.started] at @s run function polyform:game/tick

# helpers (yet another dirty implementations because of the lack of time ಥ_ಥ)
execute as @a[tag=polyform.started] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=minecraft:item, distance=..2] run function polyform:game/pickup
#execute as @e[type=interaction, tag=polyform.table] run function polyform:interaction/check_state