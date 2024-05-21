tp @s 39.5 -10 -71.5 -180 0
execute as @s[tag=tr.joined] run tellraw @s {"text":"You have left TNT Run.","color":"red"}
tag @s remove tr.ingame
tag @s remove tr.joined
gamemode creative @s
stopsound @s
effect clear @s weakness
effect clear @s resistance
effect clear @s saturation
execute as @s[tag=tr.joined] run function tntrun:player/clear_effects
scoreboard players reset @a[scores={vrt.tr.quit = 1..}]