#[ Built Time Loop ]#

#: update bossbar
execute store result bossbar turfwars.build_time value run scoreboard players get turfwars.build_time turfwars.variables

#| Events |#

#: build start
execute if score turfwars.build_time turfwars.variables matches 200 run title @a[tag=turfwars.in_game] title ""
execute if score turfwars.build_time turfwars.variables matches 200 run title @a[tag=turfwars.in_game] subtitle "Build!"

#: fight start
execute if score turfwars.build_time turfwars.variables matches 1 run title @a[tag=turfwars.in_game] title ""
execute if score turfwars.build_time turfwars.variables matches 1 run title @a[tag=turfwars.in_game] subtitle "Fight!"

#: set bossbars
execute if score turfwars.build_time turfwars.variables matches 1 run bossbar set turfwars.build_time visible false
execute if score turfwars.build_time turfwars.variables matches 1 run bossbar set turfwars.dmd_team visible true
execute if score turfwars.build_time turfwars.variables matches 1 run bossbar set turfwars.lps_team visible true

#: give arrows
execute if score turfwars.build_time turfwars.variables matches 1 run give @a[tag=turfwars.in_game] arrow 1

#: schedule loop
scoreboard players remove turfwars.build_time turfwars.variables 1
execute if score turfwars.build_time turfwars.variables matches 1.. run schedule function turfwars:turf/build_loop 1t
