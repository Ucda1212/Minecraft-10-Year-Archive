#> plagiatus:elytra/check_end
# reset player to not flying
tag @s remove plag.elytra.playing
clear @s firework_rocket
clear @s elytra 1



# they are in creative mode
tellraw @s[tag=plag.elytra.cheater] [{"text":"Only completing the course in adventure or survival counts.", "color": "red"}]
execute if entity @s[tag=plag.elytra.cheater] run return run function plagiatus:elytra/end_cleanup

# if they landed on the ground and got teleported back
tellraw @s[tag=plag.elytra.no_finish] [{"text":"You didn't complete the entire course. Try again.", "color": "red"}]
execute if entity @s[tag=plag.elytra.no_finish] run return run function plagiatus:elytra/end_cleanup

# if they didn't go through all the checkpoints, return
execute unless score @s plag.elytra.checkpoint = #total plag.elytra.checkpoint run tellraw @s [{"text":"You didn't fly through all the checkpoints. Try again.", "color": "red"}]
execute unless score @s plag.elytra.checkpoint = #total plag.elytra.checkpoint run return run function plagiatus:elytra/end_cleanup

# tell them their time

execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches ..9 run tellraw @s [{"text":"", "color": "gold"},{"text":"Elytra time: ", "color": "green"},{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches ..9 run tellraw @s [{"text":"", "color": "gold"},{"text":"Elytra time: ", "color": "green"},{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".0", {"score":{"name": "#ms", "objective": "plag.tmp"}}]
execute if score #sec plag.tmp matches ..9 if score #ms plag.tmp matches 10.. run tellraw @s [{"text":"", "color": "gold"},{"text":"Elytra time: ", "color": "green"},{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":0", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}]
execute if score #sec plag.tmp matches 10.. if score #ms plag.tmp matches 10.. run tellraw @s [{"text":"", "color": "gold"},{"text":"Elytra time: ", "color": "green"},{"score":{"name": "#min", "objective": "plag.tmp"}, "color": "gold"}, ":", {"score":{"name": "#sec", "objective": "plag.tmp"}}, ".", {"score":{"name": "#ms", "objective": "plag.tmp"}}]

# advancements
execute if score @s plag.elytra.timer matches ..3599 run advancement grant @s only plagiatus:elytra/gold
execute if score @s plag.elytra.timer matches ..4199 run advancement grant @s only plagiatus:elytra/silver
advancement grant @s only plagiatus:elytra/bronze

# check if they have a new personal best
execute if score @s plag.elytra.best > @s plag.elytra.timer run tellraw @s [{"text": "New personal best!", "color": "gold"}]
# highscore list
execute if score @s plag.elytra.best > @s plag.elytra.timer run function plagiatus:elytra/highscore/store with entity @s
scoreboard players operation @s plag.elytra.best < @s plag.elytra.timer

function plagiatus:elytra/end_cleanup