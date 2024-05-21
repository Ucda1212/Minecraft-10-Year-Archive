execute unless score @s polyform.countdown = @s polyform.countdown run scoreboard players set @s polyform.countdown 180

execute if score @s polyform.countdown matches 180 run title @a[distance=..15] clear
execute if score @s polyform.countdown matches 180 run title @a[distance=..15] title {"text": "Ready?", "color": "#ead999"}

execute if score @s polyform.countdown matches 100 run title @a[distance=..15] title {"text": "5", "color": "green"}
execute if score @s polyform.countdown matches 80 run title @a[distance=..15] title {"text": "4", "color": "green"}
execute if score @s polyform.countdown matches 60 run title @a[distance=..15] title {"text": "3", "color": "green"}
execute if score @s polyform.countdown matches 40 run title @a[distance=..15] title {"text": "2", "color": "green"}
execute if score @s polyform.countdown matches 20 run title @a[distance=..15] title {"text": "1", "color": "green"}
execute if score @s polyform.countdown matches 0 run title @a[distance=..15] subtitle {"text": "Use bundle to select your turn", "color": "yellow"}
execute if score @s polyform.countdown matches 0 run title @a[distance=..15] title {"text": "Let's fun!", "color": "yellow"}

execute if score @s polyform.countdown matches 100 as @a[distance=..15] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s polyform.countdown matches 80 as @a[distance=..15] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s polyform.countdown matches 60 as @a[distance=..15] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s polyform.countdown matches 40 as @a[distance=..15] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s polyform.countdown matches 20 as @a[distance=..15] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s polyform.countdown matches 0 as @a[distance=..15] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

execute if score @s polyform.countdown matches 0 run function polyform:game/start
scoreboard players remove @s polyform.countdown 1
