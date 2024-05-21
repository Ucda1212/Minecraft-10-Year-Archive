fill ~1 ~ ~1 ~15 ~ ~15 minecraft:air
kill @e[type=interaction, tag=polyform.table, dx=15, dz=15, dy=2, limit=255]
kill @e[type=interaction, tag=polyform.red_corner, dx=15, dz=15, dy=2, limit=8]
kill @e[type=block_display, tag=polyform.red_corner, dx=15, dz=15, dy=1, limit=8]
kill @e[type=item_display, tag=polyform.letter, dx=15, dz=15, dy=1]
kill @e[type=marker, tag=polyform.table, limit=1, sort=nearest]
kill @s