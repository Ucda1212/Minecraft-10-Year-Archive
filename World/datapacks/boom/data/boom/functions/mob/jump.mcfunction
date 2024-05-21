tag @s add boom.jump
execute store result entity @s Motion[0] double 0.25 run random value 0..1
execute store result entity @s Motion[2] double 0.25 run random value 0..1
data modify entity @s Motion[1] set value 0.65d