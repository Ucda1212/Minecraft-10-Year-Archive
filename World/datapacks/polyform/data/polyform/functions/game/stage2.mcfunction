# stage 2 tick
execute store result score Temp. polyform.current_players if entity @a[tag=polyform.current_game, scores={polyform.bundle=1..}]
execute as @a[tag=polyform.move, tag=polyform.current_game, scores={polyform.bundle=1..}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run function polyform:game/process_letters2

execute if score Temp. polyform.total_players = Temp. polyform.current_players run function polyform:game/end_stage2
