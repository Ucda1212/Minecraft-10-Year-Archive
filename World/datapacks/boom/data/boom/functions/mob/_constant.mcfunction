execute at @s[y=116,distance=..9.9,tag=!boom.jump] run tp @s ~ 106.05 ~
execute as @s[tag=boom.slime,nbt={HurtTime:10s}] run function boom:mob/shrink
execute as @s[tag=boom.piglin,tag=!boom.copy,nbt={HurtTime:10s},tag=!boom.copied] run function boom:mob/piglins