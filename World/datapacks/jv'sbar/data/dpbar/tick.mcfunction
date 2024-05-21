scoreboard players reset * dpbar.tmp


execute unless score door dpbar.bool matches 1 positioned 317 84 370 align xz if entity @e[gamemode=!spectator,dz=1,dx=2,dy=2] run function dpbar:door_open
execute if score door dpbar.bool matches 1 positioned 317 84 370 align xz unless entity @e[gamemode=!spectator,dz=1,dx=2,dy=2] run function dpbar:door_close


# function dpbar:filter/find