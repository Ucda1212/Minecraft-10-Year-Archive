#[ Item Replace ]#

#: replace light blue wool
execute if data entity @s Item{id:"minecraft:light_blue_wool"} at @s run summon item ~ ~ ~ {PickupDelay:0,Invulnerable:1b,Tags:["turfwars.wool_item","turfwars.item_checked"],Item:{id:"minecraft:light_blue_wool",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"light_blue_wool"},{blocks:"light_blue_concrete"}]}}}}

#: replace blue wool
execute if data entity @s Item{id:"minecraft:blue_wool"} at @s run summon item ~ ~ ~ {PickupDelay:0,Invulnerable:1b,Tags:["turfwars.wool_item","turfwars.item_checked"],Item:{id:"minecraft:blue_wool",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"blue_wool"},{blocks:"blue_concrete"}]}}}}
