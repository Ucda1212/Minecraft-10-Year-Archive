#> plagiatus:elytra/player_tick
# count up timer
scoreboard players add @s plag.elytra.timer 1

# convert timer to readable number
scoreboard players operation #ms plag.tmp = @s plag.elytra.timer
scoreboard players operation #sec plag.tmp = @s plag.elytra.timer
scoreboard players operation #min plag.tmp = @s plag.elytra.timer

scoreboard players operation #ms plag.tmp %= 20 plag.const
scoreboard players operation #ms plag.tmp *= 5 plag.const

scoreboard players operation #sec plag.tmp /= 20 plag.const
scoreboard players operation #sec plag.tmp %= 60 plag.const

scoreboard players operation #min plag.tmp /= 1200 plag.const

execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches ..9 unless score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Next Ring: ", "color": "green"}, {"color": "green", "score":{"name": "@s", "objective": "plag.elytra.checkpoint"}}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches ..9 unless score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Next Ring: ", "color": "green"}, {"color": "green", "score":{"name": "@s", "objective": "plag.elytra.checkpoint"}}]
execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches 10.. unless score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Next Ring: ", "color": "green"}, {"color": "green", "score":{"name": "@s", "objective": "plag.elytra.checkpoint"}}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches 10.. unless score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Next Ring: ", "color": "green"}, {"color": "green", "score":{"name": "@s", "objective": "plag.elytra.checkpoint"}}]
execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches ..9 if score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Fly back to the lighthouse!", "color": "green"}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches ..9 if score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Fly back to the lighthouse!", "color": "green"}]
execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches 10.. if score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Fly back to the lighthouse!", "color": "green"}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches 10.. if score #total plag.elytra.checkpoint = @s plag.elytra.checkpoint run title @s actionbar [{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}, {"text":" | "}, {"text":"Fly back to the lighthouse!", "color": "green"}]

# show particle for direction
scoreboard players operation #tmp plag.tmp = @s plag.elytra.checkpoint
execute as @e[tag=plag.elytra.checkpoint,type=marker] if score @s plag.elytra.checkpoint = #tmp plag.tmp run function plagiatus:elytra/particle/setup
execute unless score @s plag.elytra.checkpoint = #total plag.elytra.checkpoint run function plagiatus:elytra/particle/show with storage plag:tmp

# if you're not actively flying for 1 second, teleport to start/end
execute if score @s plag.elytra.flying matches 0 run scoreboard players add @s plag.elytra.stop_timer 1
execute unless score @s plag.elytra.flying matches 0 run scoreboard players set @s plag.elytra.stop_timer 0
execute if score @s[tag=!plag.elytra.cheater] plag.elytra.stop_timer matches 40.. run tag @s add plag.elytra.no_finish
execute if score @s[tag=!plag.elytra.cheater] plag.elytra.stop_timer matches 40.. run tp @s -1 101.3 55 0 5

# give more rockets
scoreboard players operation @s plag.tmp = @s plag.elytra.timer
scoreboard players operation @s plag.tmp %= 100 plag.const
execute if score @s plag.tmp matches 0 run give @s firework_rocket

# give saturation for some regen
effect give @s saturation 1 10

# open gate
execute if score @s plag.elytra.checkpoint matches 41 run function plagiatus:elytra/gate/open
execute if score @s plag.elytra.checkpoint matches 42 run function plagiatus:elytra/gate/close

# cheat detector
tellraw @s[gamemode=!adventure,gamemode=!survival,tag=!plag.elytra.cheater] [{"text":"You've switched to a disallowed gamemode. This run won't be counted.", "color": "red"}, {"text":" However it also won't set you back automatically, so you can practice. Use /trigger lighthouse to return.", "color": "yellow"}]
tag @s[gamemode=!adventure,gamemode=!survival,tag=!plag.elytra.cheater] add plag.elytra.cheater
scoreboard players enable @s[tag=plag.elytra.cheater] lighthouse
tp @a[scores={lighthouse=1..}] -1 101.3 55 0 5


# if you're at the start/end, check if you finished the entire course
execute if entity @s[x=-4,y=101,z=53,dx=6,dy=5,dz=8] run function plagiatus:elytra/check_end