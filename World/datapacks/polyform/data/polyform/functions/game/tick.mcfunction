# Main game tick, executes as marker

# start
tag @s add polyform.processing
scoreboard players operation Temp. polyform.identifier = @s polyform.identifier
scoreboard players operation Temp. polyform.total_players = @s polyform.total_players
execute as @a[tag=polyform.started] if score @s polyform.identifier = Temp. polyform.identifier run tag @s add polyform.current_game

# Stage 1
execute as @s[scores={polyform.stage=1}] as @a[tag=polyform.current_game] run function polyform:game/stage1
execute if score @s[scores={polyform.stage=1}] polyform.current_players = @s polyform.total_players run function polyform:game/end_stage1

# Stage 2
execute as @s[scores={polyform.stage=2}] run function polyform:game/stage2

# Stage 3
execute as @a[tag=polyform.current_game] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ if entity @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{game:false}}}}, distance=..1] run function polyform:game/submit_book
execute as @s[scores={polyform.stage=3}] as @a[tag=polyform.current_game, tag=polyform.move, limit=1] run function polyform:game/stage3

# end
tag @a[tag=polyform.current_game] remove polyform.current_game
tag @s remove polyform.processing