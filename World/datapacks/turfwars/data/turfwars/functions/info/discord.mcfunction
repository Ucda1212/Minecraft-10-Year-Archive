execute unless entity @s[tag=SuitDiscordHitbox] run return 0
tellraw @p[tag=utils.interact.c] [{"text":"Official Suit Squad Server\n","color":"aqua"},{"text":"discord.gg/fCYbdRJ3Ha", "color": "blue", "underlined": true, "clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=dQw4w9WgXcQa"}}]
#https://discord.gg/fCYbdRJ3Ha
playsound minecraft:block.note_block.xylophone master @p[tag=utils.interact.c]
