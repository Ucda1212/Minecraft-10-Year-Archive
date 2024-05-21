execute if score $active boom matches 1 as @s[type=#boom:mobs,tag=boom.mob] at @s run function boom:mob/_constant
execute if score $active boom matches 1 as @s[type=arrow,tag=boom.explosive_arrow,nbt={inGround:1b}] run kill @s
execute if score $active boom matches 1 as @s[type=marker,tag=boom.effect,tag=boom.explosive_tracker] run function boom:mob/explosive_tracker