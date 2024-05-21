# reset
scoreboard objectives remove polyform.initialized
scoreboard objectives remove polyform.joined
scoreboard objectives remove polyform.give_game
scoreboard objectives remove polyform.next
scoreboard objectives remove polyform.placing
scoreboard objectives remove polyform.ready
scoreboard objectives remove polyform.countdown
scoreboard objectives remove polyform.identifier
scoreboard objectives remove polyform.move
scoreboard objectives remove polyform.stage
scoreboard objectives remove polyform.order
scoreboard objectives remove polyform.score_previous
scoreboard objectives remove polyform.score
scoreboard objectives remove polyform.total_players
scoreboard objectives remove polyform.current_players
scoreboard objectives remove polyform.bundle

clear @a[tag=polyform.started]
tag @a remove polyform.started
tag @a remove allowed
tag @a remove polyform.rolling
tag @a remove polyform.move
tag @a remove polyform.waiting_for_move
tag @e[tag=marker, limit=1, tag=polyform.table] remove polyform.started

#execute as @e[type=marker, tag=polyform.table, limit=1, sort=nearest] at @s positioned ~-8 ~ ~-8 run function polyform:remove_table
#execute as @a run function polyform:give_egg

#execute at @e[type=marker, limit=1, tag=polyform.table] positioned ~-8 ~ ~-8 run kill @e[type=interaction, tag=polyform.red_corner, dx=15, dz=15, dy=2, limit=8]
#execute at @e[type=marker, limit=1, tag=polyform.table] positioned ~-8 ~ ~-8 run kill @e[type=item_display, tag=polyform.letter, dx=15, dz=15, dy=2]
#execute at @e[type=marker, limit=1, tag=polyform.table] run function polyform:place_interactions

function polyform:init