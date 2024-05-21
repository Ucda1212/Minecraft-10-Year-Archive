#[ Turf Wars Game End ]#

#: end timer
scoreboard players set turfwars.play_time turfwars.variables 0
schedule clear turfwars:game/timer

#: de-activate game loop
scoreboard players set turfwars.active turfwars.variables 0

#: winning titles
execute if score turfwars.dmd_turf turfwars.variables > turfwars.lps_turf turfwars.variables as @a[tag=turfwars.in_game] run title @s title [{"text": "Diamond Team","color": "aqua"}]

execute if score turfwars.dmd_turf turfwars.variables < turfwars.lps_turf turfwars.variables as @a[tag=turfwars.in_game] run title @s title [{"text": "Lapis Team","color": "aqua"}]

execute if score turfwars.dmd_turf turfwars.variables = turfwars.lps_turf turfwars.variables as @a[tag=turfwars.in_game] run title @s title [{"text": "Tied game!","color": "white"}]

execute unless score turfwars.dmd_turf turfwars.variables = turfwars.lps_turf turfwars.variables as @a[tag=turfwars.in_game] run title @s subtitle [{"text": "won Turf Wars!","color": "white"}]

#: reset players
execute as @a[tag=turfwars.in_game] run function turfwars:game/quit

