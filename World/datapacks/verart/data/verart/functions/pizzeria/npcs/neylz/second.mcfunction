
execute store result score #temp vrt.nlz.seahorse run random value 0..5

execute if score #temp vrt.nlz.seahorse matches 0 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"I dreamed of the sea last night..."}]
execute if score #temp vrt.nlz.seahorse matches 1 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"I think you could become a great sailor!"}]
execute if score #temp vrt.nlz.seahorse matches 2 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"Visit us at "},{"text":"verart.org","color":"#28B4FB","clickEvent":{"action":"open_url","value":"https://verart.org"},"hoverEvent":{"action":"show_text","contents":"Press to visit!"}},{"text":"!"}]
execute if score #temp vrt.nlz.seahorse matches 3 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"Oh? You like playing maps? Have you ever tried doing your own?"}]
execute if score #temp vrt.nlz.seahorse matches 4 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"sin() is for amateurs"}]
execute if score #temp vrt.nlz.seahorse matches 5 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":"The view is great from here!"}]
execute if score #temp vrt.nlz.seahorse matches 6 run tellraw @s ["",{"text":"ᴠᴇʀᴀʀᴛ","color":"#00CAFA"},{"text":" Neylz","color":"white"},{"text":": ","color":"dark_gray"},{"text":""}]
