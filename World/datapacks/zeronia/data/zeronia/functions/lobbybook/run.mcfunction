execute as @s if score @s lobbybook matches 1 run function zeronia:lobbybook/give

execute as @s if score @s lobbybook matches 1001 run gamemode adventure @s
execute as @s if score @s lobbybook matches 1002 run gamemode survival @s
execute as @s if score @s lobbybook matches 1003 run gamemode creative @s
execute as @s if score @s lobbybook matches 1004 run gamemode spectator @s
execute as @s if score @s lobbybook matches 1004 run tellraw @s [{"color":"aqua","text":" Switch back to creative by clicking "},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobbybook set 1003"},"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click here!","color":"green"}]},"text":"HERE"}]

execute as @s if score @s lobbybook matches 2001 run attribute @s minecraft:generic.movement_speed base set .1
execute as @s if score @s lobbybook matches 2002 run attribute @s minecraft:generic.movement_speed base set .2
execute as @s if score @s lobbybook matches 2003 run attribute @s minecraft:generic.movement_speed base set .3
execute as @s if score @s lobbybook matches 2004 run attribute @s minecraft:generic.movement_speed base set .4
execute as @s if score @s lobbybook matches 2005 run attribute @s minecraft:generic.movement_speed base set .6
execute as @s if score @s lobbybook matches 2006 run attribute @s minecraft:generic.movement_speed base set 1
execute as @s if score @s lobbybook matches 2007 run attribute @s minecraft:generic.movement_speed base set 4

execute as @s if score @s lobbybook matches 3001 run tp @s -36 69.0 -18 90 -30
execute as @s if score @s lobbybook matches 3002 run tp @s 15071.0 41.0 14976.0 -180 20
execute as @s if score @s lobbybook matches 3003 run tp @s 32.0 63 -7.0 -90 0