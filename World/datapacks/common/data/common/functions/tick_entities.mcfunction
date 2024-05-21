
#Flower pots
execute if entity @s[type=interaction,tag=FlowerPot] on target at @s run function common:flowerpots/target
execute if entity @s[type=interaction,tag=FlowerPot] run data remove entity @s interaction