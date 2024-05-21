#> volley:sim/ball/collision/net/inverse

scoreboard players operation @s vob.ball.vx *= #-1 vob.consts


scoreboard players operation @s vob.ball.vtx -= @s vob.ball.x
scoreboard players operation @s vob.ball.vtx *= #-1 vob.consts
scoreboard players operation @s vob.ball.vtx += @s vob.ball.x

