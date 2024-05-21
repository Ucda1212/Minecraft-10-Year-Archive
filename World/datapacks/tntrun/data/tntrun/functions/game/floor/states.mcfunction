# If game is not started, set floor state to 0
execute if score .started vrt.tr.game matches 0 run scoreboard players set .floor vrt.tr.game 1

# Activate floor after end of grace period
execute if score .started vrt.tr.game matches 1 if score .floor_gp vrt.tr.game matches 100.. run scoreboard players set .floor vrt.tr.game 0