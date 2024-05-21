# executes as marker
execute at @s positioned ~-8 ~ ~-8 run kill @e[type=interaction, tag=polyform.red_corner, dx=15, dz=15, dy=2, limit=8]

tag @s add polyform.started
tag @s add polyform.waiting_for_move
scoreboard players reset @s polyform.countdown
scoreboard players reset @s polyform.current_players
scoreboard players reset @s polyform.bundle
scoreboard players set @s polyform.stage 1
scoreboard players operation Temp. polyform.identifier = @s polyform.identifier
execute positioned ~-8 ~ ~-8 as @e[type=block_display, tag=polyform.red_corner, dx=15, dz=15, limit=8] run data modify entity @s Glowing set value false

# initialize players
scoreboard players reset Temp. polyform.total_players
scoreboard players reset @s polyform.total_players
execute as @a[tag=polyform.ready, distance=..15] run function polyform:game/add_player
scoreboard players operation @s polyform.total_players = Temp. polyform.total_players
scoreboard players reset Temp. polyform.total_players

execute as @e[type=minecraft:block_display, limit=8, tag= polyform.red_corner] run data modify entity @s transformation.scale[1] set value 0.0001f
execute as @e[type=minecraft:block_display, limit=8, tag= polyform.red_corner] run data modify entity @s Glowing set value 0b