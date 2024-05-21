$summon zombie ~$(x) 106.05 ~$(y) {Attributes:[{Base:0.175,Name:"generic.movement_speed"}],NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Rotation:[0.0f,0.0f],Tags:["boom.mob","boom.zombie","boom.setup"],CustomNameVisible:1b}
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.explode 6
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.radius 3
# Fix name by starting at one extra second and decrementing... shut up.
execute as @e[type=#boom:mobs,tag=boom.setup] at @s run function boom:mob/_decrement
effect give @e[type=#boom:mobs,tag=boom.setup] resistance infinite 127 true
#effect give @e[type=#boom:mobs,tag=boom.setup] slowness infinite 127 true
#effect give @e[type=#boom:mobs,tag=boom.setup] weakness infinite 127 true
tag @e[type=#boom:mobs,tag=boom.setup] remove boom.setup