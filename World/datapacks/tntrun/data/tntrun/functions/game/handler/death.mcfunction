tellraw @a[tag=tr.ingame] [{"text":"☠ ","color":"red"}, {"selector":"@s","color":"white"},{"text":" has been eliminated!","color":"red"}]
tag @s remove tr.joined
tag @s remove tr.ingame
execute as @s run function tntrun:player/clear_effects
gamemode creative @s
tp @s 39.5 -10 -71.5 -180 0
stopsound @s
item replace entity @s armor.feet with air
title @s title {"text":"You lost!","color":"red"}

