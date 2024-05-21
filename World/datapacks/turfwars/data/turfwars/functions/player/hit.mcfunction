#[ Player Hit ]#

#: reset damage taken
scoreboard players reset @s turfwars.damage_taken

#: player attack test
execute on attacker run tag @s add turfwars.attack_test
execute unless entity @a[tag=turfwars.attack_test,sort=nearest,limit=1] run return 1
tag @a[tag=turfwars.attack_test,sort=nearest,limit=1] remove turfwars.attack_test

#: attacker hit sound
execute on attacker run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0.5

#: give respawn resistance
effect give @s resistance 4 4 true
effect give @s glowing 4 0 true

#: tp player to respawn
execute if entity @s[team=turfwars.dmd_team] at @e[tag=turfwars.dmd_spawnpoint,sort=random,limit=1] run tp @s ~ ~ ~ 0 0
execute if entity @s[team=turfwars.lps_team] at @e[tag=turfwars.lps_spawnpoint,sort=random,limit=1] run tp @s ~ ~ ~ 180 0

#: team turf increase
execute if entity @s[team=turfwars.dmd_team] run function turfwars:turf/lps_increase
execute if entity @s[team=turfwars.lps_team] run function turfwars:turf/dmd_increase