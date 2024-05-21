scoreboard players operation @s polyform.identifier = Temp. polyform.identifier
tag @s add polyform.external
tag @s add polyform.Z
data modify entity @s Glowing set value true
execute positioned ~ ~ ~-1 unless entity @e[type=interaction, distance=..0.3, tag=polyform.dynamic] unless entity @e[type=item_display, distance=..0.3] if block ~ ~-1 ~ #polyform:plate run summon interaction ~-0.25 ~ ~ {height:0.01f, width:0.99f, Tags:["polyform.table", "polyform.dynamic","polyform.bound_to_origin"]}