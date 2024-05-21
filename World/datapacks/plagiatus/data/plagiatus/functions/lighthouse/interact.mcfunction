execute unless entity @s[tag=plag.lh] run return 0

execute if entity @s[tag=plag.1] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/negentropy
execute if entity @s[tag=plag.2] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/ludo
execute if entity @s[tag=plag.3] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/pumpkin_party
execute if entity @s[tag=plag.4] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/naughty_list
execute if entity @s[tag=plag.5] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/control
execute if entity @s[tag=plag.6] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/birthday_game
execute if entity @s[tag=plag.7] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/snowbound
execute if entity @s[tag=plag.8] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/easter_eggcitement
execute if entity @s[tag=plag.9] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/corte_madera
execute if entity @s[tag=plag.10] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/slay
execute if entity @s[tag=plag.11] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/pumpkin_party_remastered
execute if entity @s[tag=plag.plag] as @p[tag=utils.interact.c] run function plagiatus:lighthouse/info/plagiatus

execute if entity @s[tag=plag.yt] as @p[tag=utils.interact.c] run tellraw @s [{"text": "Plagiatus' YouTube", "color":"red","underlined": true, "clickEvent": {"action": "open_url", "value": "https://youtube.com/@plagiatus"}}]
execute if entity @s[tag=plag.tw] as @p[tag=utils.interact.c] run tellraw @s [{"text": "Plagiatus' Twitch", "color":"#6e259a","underlined": true, "clickEvent": {"action": "open_url", "value": "https://www.twitch.tv/plagiatus"}}]
execute if entity @s[tag=plag.web] as @p[tag=utils.interact.c] run tellraw @s [{"text": "Plagiatus' Website", "color":"#cd2626","underlined": true, "clickEvent": {"action": "open_url", "value": "https://plagiatus.net"}}]
execute if entity @s[tag=plag.gh] as @p[tag=utils.interact.c] run tellraw @s [{"text": "Plagiatus' GitHub", "color":"dark_gray","underlined": true, "clickEvent": {"action": "open_url", "value": "https://www.github.com/plagiatus"}}]
