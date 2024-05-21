title @a[tag=gladiator_playing] title "Begin!"
execute as @a[tag=gladiator_playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
fill 0 94 539 -2 94 539 air
fill -2 94 603 0 94 603 air

scoreboard players set $gladiator_gamestate cygnus 1