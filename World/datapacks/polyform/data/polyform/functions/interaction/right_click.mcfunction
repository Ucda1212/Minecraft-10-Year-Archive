# prepare phase
execute at @s[tag=!polyform.started, tag=!polyform.ready] if predicate polyform:red if entity @e[type=block_display, tag= polyform.red_corner, distance=..2] run tellraw @a[distance=..15] [{"selector":"@s"}, {"text": " is ready!", "color": "green"}]
execute as @s[tag=!polyform.started] at @s if predicate polyform:red if entity @e[type=block_display, tag= polyform.red_corner, distance=..2] run tag @s add polyform.ready
execute as @s[tag=polyform.ready] at @s positioned ~ ~-0.5 ~ run data modify entity @e[type=block_display, tag=polyform.red_corner, limit=1, sort=nearest] glow_color_override set value 15473700

# workaround
#execute at @e[type=interaction, tag=light_gray_cell, distance=..15, limit=1] if entity @e[type=item_display, distance=..0.3] run tag @s add allowed
# game
#execute at @s[tag=allowed, tag=!polyform.rolling, nbt={SelectedItem:{"id":"minecraft:player_head"}}] at @e[type=interaction, tag=polyform.table, nbt={interaction:{}}, limit=1, sort=nearest, tag=allowed] unless entity @e[type=item_display, tag=letter, distance=..0.3] run function polyform:game/place_letter
#execute at @s[tag=!allowed,tag=!polyform.rolling, nbt={SelectedItem:{"id":"minecraft:player_head"}}] at @e[type=interaction, tag=polyform.table, nbt={interaction:{}}, limit=1, sort=nearest, tag=allowed, tag=light_gray_cell] unless entity @e[type=item_display, tag=letter, distance=..0.3] run function polyform:game/place_letter
execute at @s[tag=!polyform.rolling, nbt={SelectedItem:{"id":"minecraft:player_head"}}, tag=polyform.move] at @e[type=interaction, tag=polyform.table, nbt={interaction:{}}, limit=1, sort=nearest] unless entity @e[type=item_display, distance=..0.3] run function polyform:game/place_letter
#execute if entity @e[type=interaction, tag=light_gray_cell, distance=..15] run tag @s remove allowed

execute at @s as @e[type=interaction, tag=polyform.table, nbt={interaction:{}}, limit=1, sort=nearest] run data remove entity @s interaction
advancement revoke @s only polyform:interact
advancement revoke @s only polyform:ready
