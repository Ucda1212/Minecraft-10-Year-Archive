scoreboard players reset @a[tag=polyform.current_game] polyform.bundle
scoreboard players enable @a[tag=polyform.current_game] polyform.next
scoreboard players set @s polyform.stage 3


# Interaction matrix
summon minecraft:interaction ~ ~1 ~ {height:0.01f, width:0.99f, Tags:["polyform.table","light_gray_cell"]}
execute store result score Temp. polyform.heigh run data get entity @e[type=interaction, tag=light_gray_cell, limit=1] Pos[1] 1000

tellraw @a[tag=polyform.current_game, tag=polyform.move, limit=1] [{"text": "Place your word onto the ", "color": "green"}, {"text": "gray", "color": "gray"}, {"text":" cell."},{"text":"\nDrop your book or ", "color": "white"},{"text": "[click here]", "color": "gold", "clickEvent": {"action": "run_command", "value": "/trigger polyform.next"}, "hoverEvent": {"action": "show_text","value": [{"text":"You can also run "},{"text":"/trigger ", "color": "gray"},{"text":"polyform.next", "color": "aqua"}]}},{"text": "\nto submit a word and get points.", "color": "white"}]
item replace entity @a[tag=polyform.current_game] hotbar.8 with book[minecraft:custom_data={game:false}, minecraft:custom_name='{"text":"Drop to submit a word","color":"#b2a58b","italic":false}', minecraft:lore=['{"italic":false,"text":"Drop twice to end your turn"}','{"text":"or skip it entirely.","italic":false}']]