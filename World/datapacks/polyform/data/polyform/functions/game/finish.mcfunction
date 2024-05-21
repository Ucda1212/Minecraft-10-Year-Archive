# as marker
tag @s remove polyform.started
scoreboard players reset @s polyform.current_players
scoreboard players reset @s polyform.total_players
scoreboard players operation Temp. polyform.identifier = @s polyform.identifier

kill @e[type=item, dx=15, dz=15, dy=3]
kill @e[type=block_display, tag=polyform.red_corner, dx=15, dz=15, limit=8]
kill @e[type=item_display, tag=polyform.letter, dx=15, dz=15, dy=2]
kill @e[type=interaction, tag=polyform.table, dx=15, dz=15, dy=2]
kill @e[type=interaction, tag=polyform.red_corner, dx=15, dz=15, dy=2, limit=8]
kill @e[type=block_display, tag=polyform.red_corner, dx=15, dz=15, dy=1, limit=8]

execute at @s run function polyform:place_table

#execute positioned ~8 ~ ~8 run function polyform:place_interactions