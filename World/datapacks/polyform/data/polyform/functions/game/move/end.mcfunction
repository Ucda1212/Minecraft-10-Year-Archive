execute store result score Temp.1 polyform.score run clear @s player_head 0
scoreboard players set Temp.2 polyform.score 7
scoreboard players operation Temp.2 polyform.score -= Temp.1 polyform.score
execute store result storage polyform tile_count int 1 run scoreboard players get Temp.2 polyform.score
function polyform:game/move/roll with storage polyform

tag @s remove polyform.rolling
scoreboard players reset @s polyform.bundle
scoreboard players reset @s polyform.next
scoreboard players enable @s polyform.next
function polyform:game/move/next_move
execute as @a[tag=polyform.current_game, tag=polyform.move, limit=1] run tellraw @a[tag=polyform.current_game] [{"text": "It's ", "color": "gray"}, {"selector": "@s", "color": "white", "bold": true}, {"text":"'s turn!"}]
tellraw @a[tag=polyform.current_game, tag=polyform.move, limit=1] [{"text": "Connect your word to the others.", "color": "green"}, {"text":"\nDrop your book or ", "color": "white"},{"text": "[click here]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/trigger polyform.next"}, "hoverEvent": {"action": "show_text","value": [{"text":"You can also run "},{"text":"/trigger ", "color": "gray"},{"text":"polyform.next", "color": "aqua"}]}},{"text": "\nto submit a word and get points.", "color": "white"}]
