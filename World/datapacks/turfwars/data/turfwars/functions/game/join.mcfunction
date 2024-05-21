#[ Join Turf Wars ]#

#: add turfwars tag
tag @s add turfwars.in_queue

#: activate game loop
scoreboard players set turfwars.active turfwars.variables 1

#: tp player to center area
tp @s -267.5 126.00 426.5 90 0

#: enable turfwars quit
scoreboard players enable @s turfwars.quit
tellraw @s [{"text":"Do [ /trigger turfwars.quit ] to quit turfwars.","bold":true}]
execute positioned -267 126 426 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~


