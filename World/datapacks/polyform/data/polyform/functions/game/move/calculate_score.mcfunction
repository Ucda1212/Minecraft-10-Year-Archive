execute store result score @s polyform.score run data get entity @s item.components."minecraft:custom_data".polyform
execute if block ~ ~-0.5 ~ green_concrete run scoreboard players operation @s polyform.score *= 2. polyform.score
execute if block ~ ~-0.5 ~ yellow_concrete run scoreboard players operation @s polyform.score *= 3. polyform.score
execute if block ~ ~-0.5 ~ blue_concrete run tag @a[tag=polyform.calculating_word] add polyform.x2_word
execute if block ~ ~-0.5 ~ barrier run tag @a[tag=polyform.calculating_word] add polyform.x3_word
tag @s add polyform.counted
tag @s remove polyform.idling
tag @s remove polyform.origin
tag @s remove polyform.X
tag @s remove polyform.Z
data modify entity @s Glowing set value false
execute at @s run kill @e[type=interaction, limit=1, sort=nearest]

execute positioned ~1 ~ ~ unless entity @e[type=item_display, distance=..0.3] unless entity @e[type=interaction, distance=..0.3] if block ~ ~-1 ~ #polyform:plate run summon interaction ~-0.25 ~ ~ {height:0.01f, width:0.99f, Tags:["polyform.table", "polyform.static"]}
execute positioned ~-1 ~ ~ unless entity @e[type=item_display, distance=..0.3] unless entity @e[type=interaction, distance=..0.3] if block ~ ~-1 ~ #polyform:plate run summon interaction ~-0.25 ~ ~ {height:0.01f, width:0.99f, Tags:["polyform.table", "polyform.static"]}
execute positioned ~ ~ ~1 unless entity @e[type=item_display, distance=..0.3] unless entity @e[type=interaction, distance=..0.3] if block ~ ~-1 ~ #polyform:plate run summon interaction ~-0.25 ~ ~ {height:0.01f, width:0.99f, Tags:["polyform.table", "polyform.static"]}
execute positioned ~ ~ ~-1 unless entity @e[type=item_display, distance=..0.3] unless entity @e[type=interaction, distance=..0.3] if block ~ ~-1 ~ #polyform:plate run summon interaction ~-0.25 ~ ~ {height:0.01f, width:0.99f, Tags:["polyform.table", "polyform.static"]}
tag @e[type=interaction, sort=nearest, limit=1] remove polyform.dynamic
tag @e[type=interaction, sort=nearest, limit=1] add polyform.static
