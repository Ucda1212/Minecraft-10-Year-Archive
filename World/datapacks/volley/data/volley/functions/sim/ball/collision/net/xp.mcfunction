#> volley:sim/ball/collision/net/xp


## pos
# l - (x - l) <=> -y + 2l
# l = 76.138
# 2l = 152.276
scoreboard players operation @s vob.ball.x *= #-1 vob.consts
scoreboard players add @s vob.ball.x 152276

## inverse velocity
scoreboard players operation @s vob.ball.vx *= #-1 vob.consts

