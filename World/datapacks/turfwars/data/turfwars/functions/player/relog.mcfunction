#[ Player Relog ]#

execute if entity @s[tag=turfwars.in_game] unless score turfwars.active turfwars.variables matches 1 run function turfwars:game/quit