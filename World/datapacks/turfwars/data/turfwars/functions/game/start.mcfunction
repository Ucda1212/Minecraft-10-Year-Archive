#[ Turf Wars Game Start ]#

#| Player Count Based Team Splitting |#

#: player count
tag @a[tag=turfwars.in_game] add turfwars.in_queue
execute store result score turfwars.players turfwars.variables if entity @a[tag=turfwars.in_queue]

#: one player
#execute if score turfwars.players turfwars.variables matches 1 run return run tellraw @a[tag=turfwars.in_queue] [{"text":"You have not enough players!","bold":true}]

#: one to two players
execute if score turfwars.players turfwars.variables matches 1..2 as @a[tag=turfwars.in_queue,sort=random,limit=1] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 1..2 as @a[tag=turfwars.in_queue,sort=random,limit=1] run function turfwars:team/join_lps

#: three to four players
execute if score turfwars.players turfwars.variables matches 3..4 as @a[tag=turfwars.in_queue,sort=random,limit=2] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 3..4 as @a[tag=turfwars.in_queue,sort=random,limit=2] run function turfwars:team/join_lps

#: five to six players
execute if score turfwars.players turfwars.variables matches 5..6 as @a[tag=turfwars.in_queue,sort=random,limit=3] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 5..6 as @a[tag=turfwars.in_queue,sort=random,limit=3] run function turfwars:team/join_lps

#: seven to eight players
execute if score turfwars.players turfwars.variables matches 7..8 as @a[tag=turfwars.in_queue,sort=random,limit=4] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 7..8 as @a[tag=turfwars.in_queue,sort=random,limit=4] run function turfwars:team/join_lps

#: nine to ten players
execute if score turfwars.players turfwars.variables matches 9..10 as @a[tag=turfwars.in_queue,sort=random,limit=5] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 9..10 as @a[tag=turfwars.in_queue,sort=random,limit=5] run function turfwars:team/join_lps

#: eleven players
execute if score turfwars.players turfwars.variables matches 11 as @a[tag=turfwars.in_queue,sort=random,limit=6] run function turfwars:team/join_dmd
execute if score turfwars.players turfwars.variables matches 11 as @a[tag=turfwars.in_queue,sort=random,limit=6] run function turfwars:team/join_lps

#| Game Init |#

#: reset arena
function turfwars:game/reset

#: build time
schedule function turfwars:turf/build_loop 1t

#: timer loop

schedule function turfwars:game/timer 1t