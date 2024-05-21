kill @e[type=item,x=-19,y=90,z=529,dx=40,dy=50,dz=85]
execute as @e[type=horse,tag=gladiator_horse] at @s run tp @s ~ -70 ~

execute if entity @a[team=gladiator_blue] if entity @a[team=gladiator_red] run function gladiator:game/start_sequence/1_tp
execute if entity @a[team=gladiator_blue] unless entity @a[team=gladiator_red] run tellraw @a[tag=gladiator_playing] "Minimum one player per team is required."
execute unless entity @a[team=gladiator_blue] if entity @a[team=gladiator_red] run tellraw @a[tag=gladiator_playing] "Minimum one player per team is required."
execute if entity @s[team=!gladiator_blue,team=!gladiator_red] run tellraw @s "Spectators may not start the game."