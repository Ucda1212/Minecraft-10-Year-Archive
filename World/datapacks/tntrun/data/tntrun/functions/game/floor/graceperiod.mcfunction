

execute if score .started vrt.tr.game matches 0 run return run scoreboard players set .floor_gp vrt.tr.game 0

# When game started accumulate up to 5 seconds until floor graceperiod is over
execute if score .floor_gp vrt.tr.game matches ..100 run scoreboard players add .floor_gp vrt.tr.game 1

# Return if there is still graceperiod
execute if score .floor_gp vrt.tr.game matches ..100 run return fail

scoreboard players add .floor_timer vrt.tr.game 1
scoreboard players operation .floor vrt.tr.game = .floor_timer vrt.tr.game
scoreboard players operation .floor vrt.tr.game %= .floor_update_threshold vrt.tr.game

function tntrun:game/floor/handle
