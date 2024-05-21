summon piglin ~ 106.05 ~ {IsImmuneToZombification:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],NoGravity:1,Attributes:[{Base:0,Name:"generic.follow_range"},{Base:0,Name:"generic.attack_damage"}],Rotation:[0.0f,0.0f],Tags:["boom.mob","boom.piglin","boom.setup","boom.copy"],CustomNameVisible:1b}
scoreboard players operation @e[type=#boom:mobs,tag=boom.setup] boom.explode = @e[type=piglin,tag=boom.mob,tag=!boom.copy,limit=1,sort=nearest] boom.explode
scoreboard players set @e[type=#boom:mobs,tag=boom.setup] boom.radius 2
# Fix name by starting at one extra second and decrementing... shut up.
execute as @e[type=#boom:mobs,tag=boom.setup] at @s run function boom:mob/_decrement
effect give @e[type=#boom:mobs,tag=boom.setup] resistance infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] slowness infinite 127 true
effect give @e[type=#boom:mobs,tag=boom.setup] weakness infinite 127 true
tag @e[type=#boom:mobs,tag=boom.setup] remove boom.setup