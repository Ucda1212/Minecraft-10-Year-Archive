execute as @a[tag=gladiator_playing] unless score @s gladiator_class matches 0.. run scoreboard players set @s gladiator_class 0

gamemode adventure @a[tag=gladiator_playing]
spawnpoint @a[tag=gladiator_playing] -0 94 526 0
tp @a[team=gladiator_red] -0.50 94.00 534.50 0 0
tp @a[team=gladiator_blue] -0.50 94.00 608.50 180 0
execute as @a[tag=gladiator_playing] if score @s gladiator_class matches 0 run function gladiator:game/give_items/0_warrior
execute as @a[tag=gladiator_playing] if score @s gladiator_class matches 1 run function gladiator:game/give_items/1_ranger
execute as @a[tag=gladiator_playing] if score @s gladiator_class matches 2 run function gladiator:game/give_items/2_lumberjack
execute as @a[tag=gladiator_playing] if score @s gladiator_class matches 3 run function gladiator:game/give_items/3_mage
execute as @a[tag=gladiator_playing,team=gladiator_red] if score @s gladiator_class matches 4 run function gladiator:game/give_items/4_equestrian_red
execute as @a[tag=gladiator_playing,team=gladiator_blue] if score @s gladiator_class matches 4 run function gladiator:game/give_items/4_equestrian_blue

fill 0 94 539 -2 94 539 polished_deepslate_wall
fill -2 94 603 0 94 603 polished_deepslate_wall

schedule function gladiator:game/start_sequence/2_3 3s

#lobby unloading stuff
fill 11 95 523 11 97 527 air