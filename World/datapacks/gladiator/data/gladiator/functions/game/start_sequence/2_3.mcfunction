title @a[tag=gladiator_playing] times 0t 40t 10t
title @a[tag=gladiator_playing] title "3"
execute as @a[tag=gladiator_playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function gladiator:game/start_sequence/3_2 1s