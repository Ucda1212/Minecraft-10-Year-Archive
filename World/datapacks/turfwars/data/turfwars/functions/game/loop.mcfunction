#> turfwars:game/run
#[ Turf Wars Game Loop ]#

## SHUT OFF GAME 
#return 1

#: add entity id tag
tag @s add turfwars.entity

#: player entity detection
execute if entity @s[type=player] run function turfwars:player/detect

#: arrow block breaking detection
execute if entity @s[type=arrow] run function turfwars:arrow/detect

#: item entity detection
execute if entity @s[type=item,tag=!turfwars.item_checked] run function turfwars:item/detect

#: remove entity id tag
tag @s remove turfwars.entity
