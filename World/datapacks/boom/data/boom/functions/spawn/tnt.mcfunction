$summon skeleton ~$(x) 106.05 ~$(y) {ArmorItems:[{id:"minecraft:leather_boots",Count:1,components:{"minecraft:dyed_color":{rgb:16730112}}},{id:"minecraft:leather_leggings",Count:1,components:{"minecraft:dyed_color":{rgb:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,components:{"minecraft:dyed_color":{rgb:16730112}}},{id:"minecraft:player_head",Count:1b,components:{"minecraft:profile":{id:[1031853657,919423726,-2059367205,1418649205],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FmNTk3NzZmMmYwMzQxMmM3YjU5NDdhNjNhMGNmMjgzZDUxZmU2NWFjNmRmN2YyZjg4MmUwODM0NDU2NWU5In19fQ=="}]}}}],NoGravity:1b,Tags:["boom.mob","boom.tnt","boom.setup"],Silent:1b,CustomNameVisible:1b}
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.explode 6
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.radius 3
# Fix name by starting at one extra second and decrementing... shut up.
execute as @e[type=#boom:mobs,tag=boom.setup] at @s run function boom:mob/_decrement
effect give @e[type=#boom:mobs,tag=boom.setup] resistance infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] slowness infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] weakness infinite 127 true
tag @e[type=#boom:mobs,tag=boom.setup] remove boom.setup