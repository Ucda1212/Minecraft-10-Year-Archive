#[ Turf Wars Tick Function ]#

#: player quit detection
execute as @a unless score @s[type=player,scores={turfwars.quit=-2147483648..2147483647}] turfwars.quit matches 0 run function turfwars:game/quit

#: game loop
execute if score turfwars.active turfwars.variables matches 1 as @e[x=-300.0,y=115.0,z=401.0,dz=50,dx=33,dy=10] at @s run function turfwars:game/loop
