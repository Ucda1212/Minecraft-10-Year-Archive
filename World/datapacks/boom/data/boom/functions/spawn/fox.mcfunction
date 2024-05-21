$summon fox ~$(x) 106.05 ~$(y) {NoGravity:0,Rotation:[180.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.255}],Tags:["boom.mob","boom.fox","boom.setup"],CustomNameVisible:1b}
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.explode 6
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.radius 3
# Fix name by starting at one extra second and decrementing... shut up.
execute as @e[type=#boom:mobs,tag=boom.setup] at @s run function boom:mob/_decrement
effect give @e[type=#boom:mobs,tag=boom.setup] resistance infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] speed infinite 1 true
#effect give @e[type=#boom:mobs,tag=boom.setup] slowness infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] weakness infinite 127 true
tag @e[type=#boom:mobs,tag=boom.setup] remove boom.setup