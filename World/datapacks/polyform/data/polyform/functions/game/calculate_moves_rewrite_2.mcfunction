tag @a[tag=polyform.temp] remove polyform.temp
scoreboard players operation @s polyform.move = Temp. polyform.move
scoreboard players add Temp. polyform.move 1
scoreboard players reset @s polyform.score
execute if entity @e[]
function polyform:game/calculate_moves_rewrite