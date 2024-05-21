# stage ending; executes as marker
tag @s remove polyform.waiting_for_move
scoreboard players set @s polyform.stage 2
scoreboard players reset @s polyform.current_players

# Refill bundle (write bundle data)
function polyform:game/starting_bundle

# move order calculation
scoreboard players set Temp. polyform.move 1
function polyform:game/calculate_moves_rewrite
tag @a[scores={polyform.move=1}] add polyform.move

# move
execute as @a[tag=polyform.started, tag=polyform.current_game] run clear @s minecraft:player_head[minecraft:custom_data~{define_move:true}]
execute as @a[tag=polyform.move, tag=polyform.current_game] at @s run function polyform:game/update_bundle with entity @e[tag=polyform.processing, limit=1] data

tellraw @a[tag=polyform.current_game] {"text": "Roll your tiles", "color": "green"}