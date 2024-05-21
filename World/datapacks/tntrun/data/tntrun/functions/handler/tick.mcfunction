## Lobby
# Join Lobby trigger
function tntrun:lobby/trigger/join_trigger
# Quit Lobby trigger
function tntrun:lobby/trigger/quit_trigger
# Store tags
function tntrun:lobby/handler/store_tags
# Display actionbar
function tntrun:lobby/timer/actionbar
# States
function tntrun:lobby/handler/states
function tntrun:game/floor/states

## Game
# Handle game join
execute as @a[tag=tr.joined,tag=!tr.ingame] if score .joined vrt.tr.lobby matches 2.. if score .started vrt.tr.game matches 1 run function tntrun:game/handler/join
# Handle floor events
function tntrun:game/floor/graceperiod
# Handle death
execute positioned 55.5 -40.0 -99.5 positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=3,dz=50,tag=tr.ingame,tag=!tr.winner] if entity @s run function tntrun:game/handler/death
# Handle win
execute if score .started vrt.tr.game matches 1 if score .ingame vrt.tr.game matches 1 run function tntrun:game/handler/win