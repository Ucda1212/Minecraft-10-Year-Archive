stopsound @s record fingermaps:music.leafy_bells
clear @s minecraft:allium[custom_model_data=4]
tag @s remove fm.music
tag @s remove fm.in_plot
scoreboard players set @s fm.has_item 0
#tellraw @s "Thanks for visiting"