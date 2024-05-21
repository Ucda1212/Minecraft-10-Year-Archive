# Decrease lobby timer
execute if score .joined vrt.tr.lobby matches 2.. if score .timer_tick vrt.tr.lobby matches 20.. if score .timer vrt.tr.lobby matches 1.. run scoreboard players remove .timer vrt.tr.lobby 1

# Handle timer (seconds) based on timer_tick (tick)
execute if score .timer_tick vrt.tr.lobby matches 20.. if score .starting vrt.tr.global matches 1 run scoreboard players set .timer_tick vrt.tr.lobby 0
execute if score .starting vrt.tr.global matches 1 run scoreboard players add .timer_tick vrt.tr.lobby 1

# Reset starting timer if not enough players or game has already started.
execute if score .starting vrt.tr.global matches 0 run scoreboard players set .timer vrt.tr.lobby 30

# Display actionbar
execute if score .joined vrt.tr.lobby matches ..1 run title @a[tag=tr.joined] actionbar {"text":"Waiting for players...","color":"gray"}
execute if score .joined vrt.tr.lobby matches 2.. if score .started vrt.tr.game matches 0 run title @a[tag=tr.joined] actionbar [{"text":"Starting in ","color":"gray"},{"score":{"name":".timer","objective":"vrt.tr.lobby"},"color":"green"},{"text":" seconds.","color":"gray"}]