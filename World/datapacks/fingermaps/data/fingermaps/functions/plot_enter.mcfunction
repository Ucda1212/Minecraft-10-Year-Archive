stopsound @s record fingermaps:music.leafy_bells
clear @s minecraft:allium[custom_model_data=4]
tag @s remove fm.music
tag @s add fm.in_plot
scoreboard players set @s fm.has_item 0
#tellraw @s "Welcome to FC"