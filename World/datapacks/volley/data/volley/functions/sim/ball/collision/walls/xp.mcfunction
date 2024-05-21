#> volley:sim/ball/collision/walls/xp


## pos
# l - (x - l) <=> -y + 2l
# l = 90.000
# 2l = 180.000
scoreboard players operation @s vob.ball.x *= #-1 vob.consts
scoreboard players add @s vob.ball.x 180000

## inverse velocity
scoreboard players operation @s vob.ball.vx *= #-1 vob.consts

