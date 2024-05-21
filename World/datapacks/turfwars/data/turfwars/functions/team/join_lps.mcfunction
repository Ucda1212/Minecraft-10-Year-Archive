#[ Join Lapis Team ]#

#: gamemode
gamemode adventure @s

#: tag setup
tag @s remove turfwars.in_queue
tag @s add turfwars.in_game

#: reset team
team leave @s
bossbar set turfwars.dmd_team players @a[team=turfwars.dmd_team]
bossbar set turfwars.lps_team players @a[team=turfwars.lps_team]

#: set team
team join turfwars.lps_team @s

#: bossbar indicator
bossbar set turfwars.lps_team players @a[team=turfwars.lps_team]

#: go to spawn location
execute at @e[tag=turfwars.lps_spawnpoint,sort=random,limit=1] run tp @s ~ ~ ~ 180 0

#: apply effects
effect give @s saturation infinite 250 true
effect give @s weakness infinite 250 true
effect give @s resistance infinite 0 true

#| Set Items |#

function turfwars:team/set_items
