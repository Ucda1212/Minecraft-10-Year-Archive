#[ Game Reset ]#

#: clear arena
fill -269 118 449 -298 124 403 air

#: reset arena ground
clone -268 115 450 -299 115 402 -299 117 402
tp @e[type=marker,tag=turfwars.turf_line,limit=1] -297.5 117.5 426.5

#: remove items
execute as @e[type=item,x=-300.0,y=115.0,z=401.0,dz=50,dx=33,dy=10,tag=turfwars.item_checked] run kill @s

#: turfwars variables reset
scoreboard players set turfwars.dmd_turf turfwars.variables 23
scoreboard players set turfwars.lps_turf turfwars.variables 23

#: reset timers
scoreboard players set turfwars.build_time turfwars.variables 200
scoreboard players set turfwars.play_time turfwars.variables 300
scoreboard players set turfwars.time_s turfwars.variables 60

execute store result score turfwars.time_m turfwars.variables run scoreboard players get turfwars.players turfwars.variables
execute if score turfwars.time_m turfwars.variables matches 7.. run scoreboard players set turfwars.time_m turfwars.variables 6

#: update bossbar
execute store result bossbar turfwars.build_time value run scoreboard players get turfwars.build_time turfwars.variables
bossbar set turfwars.build_time players @a[tag=turfwars.in_game]
bossbar set turfwars.build_time visible true

execute store result bossbar turfwars.dmd_team value run scoreboard players get turfwars.dmd_turf turfwars.variables
bossbar set turfwars.dmd_team visible false

execute store result bossbar turfwars.lps_team value run scoreboard players get turfwars.lps_turf turfwars.variables
bossbar set turfwars.lps_team visible false
