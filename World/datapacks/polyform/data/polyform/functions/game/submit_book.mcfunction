scoreboard players set @s[tag=polyform.move] polyform.next 1
execute if data entity @s Inventory[{Slot:8b}] run give @s book[minecraft:custom_data={game:false}, minecraft:custom_name='{"text":"Drop to submit a word","color":"#b2a58b","italic":false}', minecraft:lore=['{"italic":false,"text":"Drop twice to end your turn"}','{"text":"or skip it entirely.","italic":false}']]
kill @e[type=item, sort=nearest, limit=1, distance=..1]
execute unless data entity @s Inventory[{Slot:8b}] run item replace entity @s hotbar.8 with book[minecraft:custom_data={game:false}, minecraft:custom_name='{"text":"Drop to submit a word","color":"#b2a58b","italic":false}', minecraft:lore=['{"italic":false,"text":"Drop twice to end your turn"}','{"text":"or skip it entirely.","italic":false}']]
