#> volley:sim/ball/tick

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



## net collisions
# start x,y,z
# dir dx,dy,dz
# plane point 76.5,0,0 -> (76500,0,0)
# normal 1,0,0 -> (1000,0,0)

# compute d
scoreboard players operation @s vob.ball.dx = @s vob.ball.vtx
scoreboard players operation @s vob.ball.dy = @s vob.ball.vty
scoreboard players operation @s vob.ball.dz = @s vob.ball.vtz

scoreboard players operation @s vob.ball.dx -= @s vob.ball.x
scoreboard players operation @s vob.ball.dy -= @s vob.ball.y
scoreboard players operation @s vob.ball.dz -= @s vob.ball.z

# compute t
# numerator
# (px - x) * nx + (py - y) * ny + (pz - z) * nz => (px - x) * nx => (76.500 - x) * 1 => 76.500 - x
scoreboard players set #numerator vob.data 76500
scoreboard players operation #numerator vob.data -= @s vob.ball.x

# denominator
# dx * nx + dy * ny + dz * nz => dx * nx => dx * 1 => dx
scoreboard players operation #denominator vob.data = @s vob.ball.dx

# t
scoreboard players set #t vob.data 0
scoreboard players operation #t vob.data -= #numerator vob.data
scoreboard players operation #t vob.data *= #1000 vob.consts
scoreboard players operation #t vob.data /= #denominator vob.data

# compute intersection
# scoreboard players operation #ix vob.data = @s vob.ball.dx
# scoreboard players operation #ix vob.data *= #t vob.data
# scoreboard players operation #ix vob.data /= #1000 vob.consts
# scoreboard players operation #ix vob.data += @s vob.ball.x

scoreboard players operation #iy vob.data = @s vob.ball.dy
scoreboard players operation #iy vob.data *= #t vob.data
scoreboard players operation #iy vob.data /= #1000 vob.consts
scoreboard players operation #iy vob.data += @s vob.ball.y

scoreboard players operation #iz vob.data = @s vob.ball.dz
scoreboard players operation #iz vob.data *= #t vob.data
scoreboard players operation #iz vob.data /= #1000 vob.consts
scoreboard players operation #iz vob.data += @s vob.ball.z


# test if intersection is in the net
execute unless score #t vob.data matches ..0 unless score #t vob.data matches 1000.. if score #iy vob.data matches 67000..69000 if score #iz vob.data matches -965000..-85500 run function volley:sim/ball/collision/net/inverse


## apply pos
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

