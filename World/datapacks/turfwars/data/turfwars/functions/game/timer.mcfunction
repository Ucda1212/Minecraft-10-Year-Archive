#[ Turfwars Game Timer ]#

#: timer check
execute if score turfwars.play_time turfwars.variables matches 0 run return 0
schedule function turfwars:game/timer 1s

#: timer set
scoreboard players remove turfwars.play_time turfwars.variables 1

scoreboard players remove turfwars.time_s turfwars.variables 1

execute if score turfwars.time_s turfwars.variables matches 59 run scoreboard players remove turfwars.time_m turfwars.variables 1
execute if score turfwars.time_s turfwars.variables matches 0 run scoreboard players set turfwars.time_s turfwars.variables 60

#: main time
execute if score turfwars.time_s turfwars.variables matches 1..9 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"}},{"text": ":"},{"text": "0"},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"}}]

execute if score turfwars.time_s turfwars.variables matches 10..59 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"}},{"text": ":"},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"}}]

execute if score turfwars.time_s turfwars.variables matches 60 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"}},{"text": ":"},{"text": "00"}]

#: warning time
execute unless score turfwars.time_m turfwars.variables matches 0 run return 0
execute if score turfwars.time_s turfwars.variables matches 31..59 run return 0
execute if score turfwars.time_s turfwars.variables matches 1..9 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"},"color": "red"},{"text": ":","color": "red"},{"text": "0","color": "red"},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"},"color": "red"}]

execute if score turfwars.time_s turfwars.variables matches 10..59 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"},"color": "red"},{"text": ":","color": "red"},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"},"color": "red"}]

#: final moments time
execute if score turfwars.time_s turfwars.variables matches 11..59 run return 0
execute if score turfwars.time_s turfwars.variables matches 1..9 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"},"color": "red","bold": true},{"text": ":","color": "red","bold": true},{"text": "0","color": "red","bold": true},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"},"color": "red","bold": true}]

execute if score turfwars.time_s turfwars.variables matches 10..59 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"},"color": "red","bold": true},{"text": ":","color": "red","bold": true},{"score":{"name":"turfwars.time_s","objective":"turfwars.variables"},"color": "red","bold": true}]

#: times up
execute if score turfwars.time_s turfwars.variables matches 60 run title @a[tag=turfwars.in_game] actionbar [{"score":{"name":"turfwars.time_m","objective":"turfwars.variables"},"color": "red","bold": true},{"text": ":","color": "red","bold": true},{"text": "00","color": "red","bold": true}]

#: finish timer
execute as @a[tag=turfwars.in_game] if score turfwars.time_s turfwars.variables matches 1..9 at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1.6 
execute as @a[tag=turfwars.in_game] if score turfwars.time_s turfwars.variables matches 60 at @s run playsound item.goat_horn.sound.1 master @s ~ ~ ~ 100 1

#: game end
execute unless score turfwars.time_s turfwars.variables matches 60 run return 0
function turfwars:game/end
