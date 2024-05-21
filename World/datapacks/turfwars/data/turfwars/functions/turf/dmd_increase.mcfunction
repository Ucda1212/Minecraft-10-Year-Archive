#[ Diamond Team Turf Increase ]#

#: move turf line
tag @e[tag=turfwars.turf_line,sort=nearest,limit=1] add turfwars.dmd_increase
execute as @e[tag=turfwars.turf_line,sort=nearest,limit=1] at @s run function turfwars:turf/move_line

#: update score
scoreboard players add turfwars.dmd_turf turfwars.variables 1
scoreboard players remove turfwars.lps_turf turfwars.variables 1

#: update bossbar
execute store result bossbar turfwars.dmd_team value run scoreboard players get turfwars.dmd_turf turfwars.variables
execute store result bossbar turfwars.lps_team value run scoreboard players get turfwars.lps_turf turfwars.variables