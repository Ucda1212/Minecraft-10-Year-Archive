summon minecraft:item_display ~0.25 ~ ~ {Glowing:1b, Rotation:[-90F,90F],Tags:["polyform.letter","polyform.new", "polyform.idling"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,0.375f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{ id: [I; 1374579730, 1042370034, -1587386351, -1172036165], properties: [{ name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdmOWNlMmFmY2Q4OTc4YmI0YmRhZmEyYmE5Yjc3YjE4YmFmNDIzMzA1ZTYyZmRiMGM3YmQ4YmQ1YjFiZCJ9fX0=" }] }}}}
data modify entity @e[type=item_display, tag=polyform.new,limit=1] item.components set from entity @s SelectedItem.components
scoreboard players operation @e[type=item_display, tag=polyform.new,limit=1] polyform.identifier = @s polyform.identifier

tag @e[tag=polyform.new, limit=1] remove polyform.new
item replace entity @s weapon.mainhand with air

scoreboard players add @s polyform.length 1

# EXECUTES IN 2 STEPS!!! Not for deduplication
execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/move/interaction_manager
execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/move/interaction_manager
