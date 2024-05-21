playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 2
tp @s -352 71 -198
effect clear @s invisibility
tag @s remove bnsd.player
title @s times 10 70 20

title @s actionbar " "


## check if all players finished > reset game 
function bnsd:pregame/countplayers
execute if score .players bnsd.main matches 0 run function bnsd:ingame/reset