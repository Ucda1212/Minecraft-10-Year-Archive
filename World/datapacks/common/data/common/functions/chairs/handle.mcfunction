##This function runs as an entity with the tag chair 

tag @s add current_chair 

execute on target run ride @s mount @e[tag=current_chair,limit=1]

tag @s remove current_chair

data remove entity @s interaction 