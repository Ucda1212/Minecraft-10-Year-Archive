clear @a[tag=gladiator_playing]
tp @a[tag=gladiator_playing] -0.5 94 526.5 0 0
tag @a remove gladiator_red
tag @a remove gladiator_blue
team leave @a[tag=gladiator_playing]
tag @a[tag=gladiator_playing] remove gladiator_playing
scoreboard players set $gladiator_gamestate cygnus 0
function gladiator:lobby/load