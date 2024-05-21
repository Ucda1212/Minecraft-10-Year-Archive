# executes as finishing player
tag @s remove polyform.move

# move all
execute as @a[tag=polyform.started, tag=polyform.current_game] run scoreboard players remove @s polyform.move 1
scoreboard players operation @s polyform.move = Temp. polyform.total_players

tag @a[tag=polyform.started, tag=polyform.current_game, scores={polyform.move=1}, limit=1] add polyform.move
execute as @a[tag=polyform.started, tag=polyform.current_game, tag=polyform.move] run scoreboard players operation @s polyform.score_previous = @s polyform.score
execute unless score Temp. polyform.total_players = Temp. polyform.current_players as @a[tag=polyform.move, tag=polyform.current_game, limit=1] at @s run function polyform:game/update_bundle with entity @e[tag=polyform.processing, limit=1] data

scoreboard players enable @a[tag=polyform.current_game, tag=polyform.move] polyform.next