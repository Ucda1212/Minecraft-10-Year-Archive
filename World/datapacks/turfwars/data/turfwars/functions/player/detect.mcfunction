#[ Player Detect ]#

#: hit detection
execute if score @s turfwars.damage_taken matches 1.. run function turfwars:player/hit

#: turf detection
execute if entity @s[team=turfwars.dmd_team] at @s unless block ~ 117 ~ light_blue_concrete unless block ~ 117 ~ smooth_quartz_stairs at @s run tp @s ~ ~ ~-1
execute if entity @s[team=turfwars.lps_team] at @s unless block ~ 117 ~ blue_concrete unless block ~ 117 ~ smooth_quartz_stairs at @s run tp @s ~ ~ ~1