tp @e[type=#boom:mobs,tag=boom.mob] ~ ~-1000 ~
tp @e[type=#boom:mobs,tag=boom.mob] ~ ~-1000 ~
kill @e[type=#boom:effects,tag=boom.effect]
kill @e[type=#boom:effects,tag=boom.effect]
tag @a remove boom.playing
scoreboard players set $active boom 0

fill 273 106 111 299 106 137 air

tellraw @a[gamemode=adventure] ["",{"text":"- ","color":"white"},{"text":"That game of ","color":"gray"},{"text":"Pit","color":"red"},{"text":" of ","color":"gray"},{"text":"Boom","color":"dark_red"},{"text":" lasted ","color":"gray"},{"score":{"name":"$seconds","objective":"boom.timer"},"color":"gold","bold":true},{"color":"gold","text":" Seconds!","bold":true}]