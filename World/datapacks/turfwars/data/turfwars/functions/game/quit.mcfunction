#[ Quit Turf Wars ]#

#: reset turfwars quit
scoreboard players reset @s turfwars.quit

#: clear effects
effect clear @s weakness
effect clear @s saturation
effect clear @s resistance

#: remove turfwars tags
tag @s remove turfwars.in_queue
tag @s remove turfwars.in_game
tag @s remove turfwars.in_team

#: tp player
tp @s -283.00 118.00 455.0 180 0

#: leave team
team leave @s

#: clear player inventory
clear @s leather_chestplate 1
clear @s leather_boots 1
clear @s light_blue_wool 1028
clear @s blue_wool 1028
clear @s arrow 1028
clear @s bow 1028


#: remove bossbars
bossbar set turfwars.dmd_team players @a[team=turfwars.dmd_team]
bossbar set turfwars.lps_team players @a[team=turfwars.lps_team]

bossbar set turfwars.build_time players @a[team=turfwars.dmd_team]
bossbar set turfwars.build_time players @a[team=turfwars.lps_team]