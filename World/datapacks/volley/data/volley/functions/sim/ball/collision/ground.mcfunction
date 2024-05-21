#> volley:sim/ball/collision/ground

# w Neylz a

## pos
# h - (y - x) <=> -y + 2h
# h = 65.625
# 2h = 131.250
scoreboard players operation @s vob.ball.y *= #-1 vob.consts
scoreboard players add @s vob.ball.y 131250

## inverse velocity
scoreboard players operation @s vob.ball.vy *= #-1 vob.consts

## friction
scoreboard players operation @s vob.ball.vy -= .friction.bounce vob.data
execute if score @s vob.ball.vy matches ..-1 run scoreboard players set @s vob.ball.vy 0


## ground friction (xz)
scoreboard players operation @s vob.ball.vx *= .friction.bounce.xz vob.data
scoreboard players operation @s vob.ball.vx /= #1000 vob.consts
scoreboard players operation @s vob.ball.vz *= .friction.bounce.xz vob.data
scoreboard players operation @s vob.ball.vz /= #1000 vob.consts
