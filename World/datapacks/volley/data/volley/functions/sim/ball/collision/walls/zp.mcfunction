#> volley:sim/ball/collision/walls/zp


## pos
# l - (z - l) <=> -y + 2l
# l = -81.000
# 2l = -162.000
scoreboard players operation @s vob.ball.z *= #-1 vob.consts
scoreboard players remove @s vob.ball.z 162000

## inverse velocity
scoreboard players operation @s vob.ball.vz *= #-1 vob.consts

