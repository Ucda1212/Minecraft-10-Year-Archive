scoreboard players add @s tit_spacemen 1
tellraw @s ["",{"text":"\n"},{"text":"ʏᴏᴜ'ᴠᴇ ꜰᴏᴜɴᴅ ","color":"#5CB5E0"},{"score":{"name":"@s","objective":"tit_spacemen"},"color":"gold"},{"text":" ᴏᴜᴛ ᴏꜰ ","color":"#5CB5E0"},{"score":{"name":".max","objective":"tit_spacemen"},"color":"gold"},{"text":" ꜱᴘᴀᴄᴇᴍᴇɴ!","color":"#5CB5E0"},{"text":"\n "}]
execute if score @s tit_spacemen >= .max tit_spacemen run advancement grant @s only titano:suit_trophy