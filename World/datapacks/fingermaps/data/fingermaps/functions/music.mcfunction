stopsound @s record fingermaps:music.leafy_bells
# Even though music is played to everyone it will only be heard in a desginated radius around the plot as to not interfeer with the experience
scoreboard players set @s fm.music 0
execute positioned -253.42 122.00 63.56 run playsound fingermaps:music.leafy_bells record @s -253.42 122.00 63.56
tag @s add fm.music