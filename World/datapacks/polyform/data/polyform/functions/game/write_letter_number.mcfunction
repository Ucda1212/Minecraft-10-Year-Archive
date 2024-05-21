# count players with finished move selection
scoreboard players add @e[type=marker, tag=polyform.processing, limit=1] polyform.current_players 1

# extract score
execute store result score @s polyform.score run data get entity @s Inventory[{components:{"minecraft:custom_data":{define_move:true}}}].components.minecraft:custom_data.letter
tellraw @a[tag=polyform.debug] ["DEBUG: ",{"score":{"name":"@s","objective":"polyform.score"}}]
tag @s remove polyform.waiting_for_move
