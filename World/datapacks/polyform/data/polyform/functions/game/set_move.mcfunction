# executes as player with min score
# define move for player with min score
scoreboard players operation @s polyform.move = Temp. polyform.move
scoreboard players add Temp. polyform.move 1

# exclude player from next loops and return if there's another player
scoreboard players reset @s polyform.score
execute as @a[tag=polyform.started] if score @s polyform.identifier = Temp. polyform.identifier if score Temp. polyform.order = @s polyform.score run return 0

# repeat until players ends
execute as @a[tag=polyform.started, scores={polyform.move=0..}] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/calculate_moves