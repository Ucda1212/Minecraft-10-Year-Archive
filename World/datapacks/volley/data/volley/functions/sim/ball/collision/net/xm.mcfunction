#> volley:sim/ball/collision/net/xm


## pos
# l - (x - l) <=> -y + 2l
# l = 76.862
# 2l = 153.724
scoreboard players operation @s vob.ball.x *= #-1 vob.consts
scoreboard players add @s vob.ball.x 153724

## inverse velocity
scoreboard players operation @s vob.ball.vx *= #-1 vob.consts

