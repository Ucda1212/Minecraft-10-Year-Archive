# Reset floor state to 1
scoreboard players set .floor vrt.tr.game 1
# Add winner tag to last player standing
execute as @a[tag=tr.ingame,limit=1] run tag @s add tr.winner

gamemode creative @a[tag=tr.winner]
tp @a[tag=tr.winner] 39.5 -10 -71.5 -180 0
stopsound @a[tag=tr.winner]
item replace entity @a[tag=tr.winner] armor.feet with air

title @a[tag=tr.winner] title {"text":"You won!","color":"green"}

# Remove all players from being ingame
tag @a remove tr.ingame
tag @a remove tr.joined

execute as @a[tag=tr.winner] if score .started vrt.tr.game matches 1 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has won a game of TNT Run!","color":"green"}]
execute as @a[tag=tr.winner] run function tntrun:player/clear_effects

# Reset floors
execute if entity @a[tag=tr.winner] run function tntrun:lobby/handler/reset_floors

# Remove winner tag
execute if entity @a[tag=tr.winner] if score .started vrt.tr.game matches 1 run tag @a[tag=tr.winner,limit=1] remove tr.winner

# Change started state to 0 on game end
execute if score .ingame vrt.tr.game matches ..1 if score .started vrt.tr.game matches 1 run scoreboard players set .started vrt.tr.game 0
