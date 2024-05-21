# Change starting state to 0
execute if score .joined vrt.tr.lobby matches ..1 run scoreboard players set .starting vrt.tr.global 0

# Change starting state to 1
execute if score .joined vrt.tr.lobby matches 2.. if score .starting vrt.tr.global matches 0 run scoreboard players set .starting vrt.tr.global 1

# Change started state to 0 if not enough players are playing
execute if score .ingame vrt.tr.game matches ..0 run scoreboard players set .started vrt.tr.game 0

# Reset floors on game start
execute if score .timer vrt.tr.lobby matches 0 if score .started vrt.tr.game matches 0 run function tntrun:lobby/handler/reset_floors

# Reset floor timer
execute if score .timer vrt.tr.lobby matches 0 if score .started vrt.tr.game matches 0 run scoreboard players set .floor_timer vrt.tr.game 0

# Change started state to 1 when all conditions are met
execute if score .timer vrt.tr.lobby matches 0 if score .started vrt.tr.game matches 0 run scoreboard players set .started vrt.tr.game 1
