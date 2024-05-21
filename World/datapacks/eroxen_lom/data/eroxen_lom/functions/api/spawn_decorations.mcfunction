kill @e[type=item_display,tag=eroxen_lom.decoration]
kill @e[type=block_display,tag=eroxen_lom.decoration]
kill @e[type=text_display,tag=eroxen_lom.decoration]
kill @e[type=interaction,tag=eroxen_lom.decoration]
kill @e[type=marker,tag=eroxen_lom.decoration]

# eroxen player statue
summon minecraft:item_display -102 121.5 224 {Rotation:[135f,0f],Tags:["eroxen_lom.decoration"],item:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:1}}}
summon minecraft:text_display -102 123 224 {Rotation:[135f,0f],Tags:["eroxen_lom.decoration"],text:'{"text":"ɴʙᴛ","color":"#ff0000","extra":[{"text":" Eroxen","color":"red"}]}',billboard:"vertical"}

summon minecraft:interaction -103 122 226 {Tags:["eroxen_lom.decoration","eroxen_lom.plug"],width:0.55f,height:0.55f,response:1b,Passengers:[{id:"minecraft:marker",data:{message:'{"text":"Eroxen\'s Modrinth","color":"green","underlined":true,"clickEvent":{"action":"open_url","value":"https://modrinth.com/user/Eroxen"},"hoverEvent":{"action":"show_text","value":[{"text":"→ modrinth.com"}]}}'}}]}

summon minecraft:interaction -100 122 223 {Tags:["eroxen_lom.decoration","eroxen_lom.plug"],width:0.55f,height:0.55f,response:1b,Passengers:[{id:"minecraft:marker",data:{message:'{"text":"Eroxen\'s Planet Minecraft","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/eroxen/"},"hoverEvent":{"action":"show_text","value":[{"text":"→ planetminecraft.com"}]}}'}}]}

summon minecraft:interaction -102 121 224 {Tags:["eroxen_lom.decoration","eroxen_lom.plug"],width:0.8f,height:2f,response:1b,Passengers:[{id:"minecraft:marker",data:{message:'{"text":"Hi, my name\'s ","color":"yellow","extra":[{"text":"Eroxen","color":"red"},{"text":"!\\nAs a content creator, I mostly make Datapacks. In the Java Realms 10th anniversary Map Jam, "},{"text":"DrSallan","color":"red"},{"text":", "},{"text":"Tado","color":"red"},{"text":" and I teamed up to create our very first Realms map, "},{"text":"Titanomechia","color":"white"},{"text":", which ended up winning the competition! If the map is already published by the time you\'re reading this, make sure to check it out! There\'s also 10 spacemen from our new map scattered around this map, can you find them all?\\nThe building you\'re inside of right now is also a minigame of its own. If you walk out onto the balcony, you will see a little ship in the river. Fly over there and look back at this building to play Eroxen\'s Lights Out Manor!"}]}'}}]}

summon minecraft:text_display -114 76.6 194.95 {Rotation:[180f,0f],Tags:["eroxen_lom.decoration"],text:'{"text":"Eroxen\'s","color":"dark_gray"}',background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display -114 76.2 194.95 {Rotation:[180f,0f],Tags:["eroxen_lom.decoration"],text:'{"text":"Lights Out Manor","color":"dark_gray"}',background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]}}

summon minecraft:item_display -104.5 123.4 217.7 {Rotation:[-20f,-10f],Tags:["eroxen_lom.decoration"],item:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

summon minecraft:item_display -105.3 122.2 216.4 {Rotation:[130f,-80f],Tags:["eroxen_lom.decoration"],item:{Count:1b,id:"minecraft:iron_sword"}}

summon minecraft:block_display -101.87 122.00 217.35 {Rotation:[200f,0f],Tags:["eroxen_lom.decoration"],block_state:{Name:"minecraft:lectern"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0625f,0.0625f,0.0625f]}}
summon minecraft:block_display -101.7 122.00 217.4 {Rotation:[40f,0f],Tags:["eroxen_lom.decoration"],block_state:{Name:"minecraft:bamboo_stairs"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.135f,0.135f,0.135f]}}

summon minecraft:item_display -100 122.6 219 {Rotation:[0f,0f],Tags:["eroxen_lom.decoration"],item:{Count:1b,id:"minecraft:orange_tulip",tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}




#/summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[0.3709f,-0.2241f,-0.9012f,1.1875f,0.5477f,0.8365f,0.0173f,0.0625f,0.7500f,-0.5000f,0.4330f,0.5625f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[0.1367f,-0.3235f,-0.9363f,1.8750f,0.8876f,0.4596f,-0.0292f,1.5625f,0.4398f,-0.8271f,0.3500f,2.1875f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[0.2513f,-0.2420f,-0.9372f,1.5625f,0.7425f,0.6694f,0.0262f,0.6875f,0.6210f,-0.7024f,0.3478f,1.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:lantern",Properties:{hanging:"true"}},transformation:[1.0000f,0.0000f,0.0000f,0.7500f,0.0000f,1.0000f,0.0000f,0.8750f,0.0000f,0.0000f,1.0000f,1.4375f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:lantern",Properties:{hanging:"true"}},transformation:[1.0000f,0.0000f,0.0000f,0.4375f,0.0000f,1.0000f,0.0000f,0.0625f,0.0000f,0.0000f,1.0000f,0.7500f,0.0000f,0.0000f,0.0000f,1.0000f]}]}