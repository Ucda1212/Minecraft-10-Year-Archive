title @a[tag=gladiator_playing] title "1"
execute as @a[tag=gladiator_playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function gladiator:game/start_sequence/5_start 1s