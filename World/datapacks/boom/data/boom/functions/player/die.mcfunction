tp @s 266 112 124 -90 0
tellraw @s ["",{"text":"- ","color":"white"},{"text":"You lasted in the ","color":"gray"},{"text":"Pit","color":"red"},{"text":" of ","color":"gray"},{"text":"Boom","color":"dark_red"},{"text":" for ","color":"gray"},{"score":{"name":"@s","objective":"boom.timer"},"color":"green","bold":true,"underlined": true},{"color":"green","text":" Seconds!","bold":true,"underlined": true}]
attribute @s minecraft:generic.attack_damage base set 1.0
scoreboard players set @s boom.timer 0
scoreboard players reset @s boom.die
tag @s remove boom.dead
tag @s remove boom.playing