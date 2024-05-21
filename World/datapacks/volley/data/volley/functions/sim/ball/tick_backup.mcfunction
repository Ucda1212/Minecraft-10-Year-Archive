#> volley:sim/ball/tick_backup

## gravity
scoreboard players set @s vob.ball.ax 0
scoreboard players operation @s vob.ball.ay = .precomp.gravity vob.data
scoreboard players set @s vob.ball.az 0



## process
# v & a
scoreboard players operation @s vob.ball.vx += @s vob.ball.ax
scoreboard players operation @s vob.ball.vy += @s vob.ball.ay
scoreboard players operation @s vob.ball.vz += @s vob.ball.az

scoreboard players operation @s vob.ball.vtx = @s vob.ball.vx
scoreboard players operation @s vob.ball.vty = @s vob.ball.vy
scoreboard players operation @s vob.ball.vtz = @s vob.ball.vz

scoreboard players operation @s vob.ball.vtx *= .velcoef vob.data
scoreboard players operation @s vob.ball.vty *= .velcoef vob.data
scoreboard players operation @s vob.ball.vtz *= .velcoef vob.data

scoreboard players operation @s vob.ball.vtx /= #1000 vob.consts
scoreboard players operation @s vob.ball.vty /= #1000 vob.consts
scoreboard players operation @s vob.ball.vtz /= #1000 vob.consts

# precompute next pos
scoreboard players operation @s vob.ball.vtx += @s vob.ball.x
scoreboard players operation @s vob.ball.vty += @s vob.ball.y
scoreboard players operation @s vob.ball.vtz += @s vob.ball.z



# net collisions
# execute if score @s vob.ball.vx matches ..-1 if  run function volley:sim/ball/collision/walls/zm


# apply pos
scoreboard players operation @s vob.ball.x = @s vob.ball.vtx
scoreboard players operation @s vob.ball.y = @s vob.ball.vty
scoreboard players operation @s vob.ball.z = @s vob.ball.vtz


## inputs handler
execute as @e[tag=vob.ball_interaction,limit=1,sort=nearest] run function volley:sim/interraction/detect

execute if score .alt vob.interract.handler matches 1 run function volley:sim/ball/interraction_velocity


## collisions

# ground collision (level 66 - 0.375 (distance between interaction and actual visual ball))
execute unless score @s vob.ball.y matches 65625.. if score @s vob.ball.vy matches ..-1 run function volley:sim/ball/collision/ground

# tellraw Neylz {"score:{"name": "@s", "objective": "vob.ball.vy"}}

# box
# wall z-
execute if score @s vob.ball.z matches ..-101000 run function volley:sim/ball/collision/walls/zm
execute if score @s vob.ball.z matches -81000.. run function volley:sim/ball/collision/walls/zp

execute if score @s vob.ball.x matches ..63000 run function volley:sim/ball/collision/walls/xm
execute if score @s vob.ball.x matches 90000.. run function volley:sim/ball/collision/walls/xp





## apply
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s vob.ball.x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s vob.ball.y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s vob.ball.z

