#> volley:sim/ball/collision/walls/xm


## pos
# l - (x - l) <=> -y + 2l
# l = 63.000
# 2l = 126.000
scoreboard players operation @s vob.ball.x *= #-1 vob.consts
scoreboard players add @s vob.ball.x 126000

## inverse velocity
scoreboard players operation @s vob.ball.vx *= #-1 vob.consts

