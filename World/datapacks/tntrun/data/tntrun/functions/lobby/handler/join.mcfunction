# Deny join
execute if entity @s[tag=tr.joined] run tellraw @s {"text":"You are already ingame.","color":"red"}
scoreboard players reset @a[scores={vrt.tr.join = 1..}]
execute if entity @s[tag=tr.joined] run return 1
execute if score .started vrt.tr.game matches 1 as @s[tag=!tr.joined] run return run tellraw @s {"text":"There is currently an ongoing game running.","color":"red"}

# Handle join
tp @s[tag=!tr.joined] 25.5 -10 -85.5 -90 0
tag @s[tag=!tr.joined] add tr.joined
execute as @s[tag=tr.joined] run function tntrun:player/give_effects
stopsound @s[tag=tr.joined]
execute as @s[tag=tr.joined] run tellraw @s {"text":"You have joined TNT Run.","color":"green"}
gamemode adventure @s[tag=tr.joined]
