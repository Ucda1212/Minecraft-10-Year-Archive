$summon pillager ~$(x) 106.05 ~$(y) {HandItems:[{id:"minecraft:crossbow",Count:1b},{}],NoGravity:1b,Rotation:[0.0f,0.0f],Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["boom.mob","boom.pillager","boom.setup","boom.look"],CustomNameVisible:1b}
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.explode 6
# Fix name by starting at one extra second and decrementing... shut up.
execute as @e[type=#boom:mobs,tag=boom.setup] at @s run function boom:mob/_decrement
effect give @e[type=#boom:mobs,tag=boom.setup] resistance infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] slowness infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] weakness infinite 127 true
tag @e[type=#boom:mobs,tag=boom.setup] remove boom.setup