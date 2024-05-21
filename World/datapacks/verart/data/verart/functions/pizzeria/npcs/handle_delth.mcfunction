##This function should run as an entity with tag delth_npc_interaction 

execute on target run tellraw @s ["",{"text":"\u1d20\u1d07\u0280\u1d00\u0280\u1d1b ","color":"#00CAFA"},{"text":"Delth","color":"white"},{"text":":","color":"dark_gray"},{"text":" Would you like to try "},{"text":"[Pizza Time!]","color":"yellow","clickEvent":{"action":"open_url","value":"https://verart.org/#pizza-time"},"hoverEvent":{"action":"show_text","contents":"Press to download!"}},{"text":" for yourself? visit us at "},{"text":"verart.org","color":"#28B4FB","clickEvent":{"action":"open_url","value":"https://verart.org"},"hoverEvent":{"action":"show_text","contents":"Press to visit!"}},{"text":"!"}]

data remove entity @s interaction 


