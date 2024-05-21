##This function should run as an entity with tag verart_socials_interaction 

execute on target run tellraw @s ["",{"text":"\u1d20\u1d07\u0280\u1d00\u0280\u1d1b ","color":"aqua"},{"text":"s\u1d0f\u1d04\u026a\u1d00\u029fs\n\n"},{"text":"Website","color":"dark_aqua"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"verart.org","clickEvent":{"action":"open_url","value":"https://verart.org"}},{"text":"\n"},{"text":"Discord","color":"#7289DA"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"discord.verart.org","clickEvent":{"action":"open_url","value":"https://discord.verart.org"}},{"text":"\n "}]

data remove entity @s interaction 