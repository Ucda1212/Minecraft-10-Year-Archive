#[ Turf Wars Load Function ]#

#| Turf Wars Scorboards |#

#: damage
scoreboard objectives add turfwars.damage_taken minecraft.custom:minecraft.damage_taken

#: variables
scoreboard objectives add turfwars.variables dummy
scoreboard players add turfwars.dmd_turf turfwars.variables 0
scoreboard players add turfwars.lps_turf turfwars.variables 0

scoreboard players add turfwars.build_time turfwars.variables 0
scoreboard players add turfwars.play_time turfwars.variables 0

scoreboard players add turfwars.time_m turfwars.variables 0
scoreboard players add turfwars.time_s turfwars.variables 0

scoreboard players add turfwars.active turfwars.variables 0

#: quit trigger
scoreboard objectives add turfwars.quit trigger


#: turfwars bossbars
bossbar add turfwars.dmd_team [{"text":"Diamond Team Turf"}]
bossbar set turfwars.dmd_team style notched_6
bossbar set turfwars.dmd_team color blue
bossbar set turfwars.dmd_team max 47

bossbar add turfwars.lps_team [{"text":"Lapis Team Turf"}]
bossbar set turfwars.lps_team style notched_6
bossbar set turfwars.lps_team color blue
bossbar set turfwars.lps_team max 47

bossbar add turfwars.build_time [{"text":"Build Time!"}]
bossbar set turfwars.build_time style progress
bossbar set turfwars.build_time color white
bossbar set turfwars.build_time max 200

#: turfwars teams
team add turfwars.dmd_team
team modify turfwars.dmd_team friendlyFire false
team modify turfwars.dmd_team color aqua
team modify turfwars.dmd_team prefix "💎 "

team add turfwars.lps_team
team modify turfwars.lps_team friendlyFire false
team modify turfwars.lps_team color blue
team modify turfwars.lps_team prefix "⚰ "
