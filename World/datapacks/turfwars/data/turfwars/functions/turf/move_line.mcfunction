#[ Turf Move Line ]#

#: cancel moving
execute if block ~ ~ ~ clay run return 1

#: diamond team increase
execute if entity @s[tag=turfwars.dmd_increase] if block ~ ~ ~ snow_block run scoreboard players add turfwars.lps_turf turfwars.variables 1
execute if entity @s[tag=turfwars.dmd_increase] if block ~ ~ ~ light_blue_concrete run tp @s ~ ~ ~1
execute at @s if entity @s[tag=turfwars.dmd_increase] run fill -298 117 ~ -269 124 ~ light_blue_wool replace blue_wool
execute at @s if entity @s[tag=turfwars.dmd_increase] run fill -298 ~ ~ -269 ~ ~ light_blue_concrete replace #turfwars:line_replaceable
tag @s remove turfwars.dmd_increase

#: lapis team increase
execute if entity @s[tag=turfwars.lps_increase] if block ~ ~ ~ snow_block run scoreboard players add turfwars.dmd_turf turfwars.variables 1
execute if entity @s[tag=turfwars.lps_increase] if block ~ ~ ~ blue_concrete run tp @s ~ ~ ~-1
execute at @s if entity @s[tag=turfwars.lps_increase] run fill -298 117 ~ -269 124 ~ blue_wool replace light_blue_wool
execute at @s if entity @s[tag=turfwars.lps_increase] run fill -298 ~ ~ -269 ~ ~ blue_concrete replace #turfwars:line_replaceable
tag @s remove turfwars.lps_increase
