scoreboard players remove @s boom.timer 1


# During effect
execute as @s[tag=boom.web] run fill ~1 ~ ~1 ~-1 ~ ~-1 cobweb replace air
execute as @s[tag=boom.fire] run fill ~1 106 ~1 ~-1 106 ~-1 fire replace air


# End effect
execute as @s[tag=boom.web] if score @s boom.timer matches 0 run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace cobweb
execute as @s[tag=boom.fire] if score @s boom.timer matches 0 run fill ~1 106 ~1 ~-1 106 ~-1 air replace fire

# Bye bye
execute if score @s boom.timer matches 0 run kill @s[type=!player]