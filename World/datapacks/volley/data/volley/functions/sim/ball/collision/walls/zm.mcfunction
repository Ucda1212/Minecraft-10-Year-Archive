#> volley:sim/ball/collision/walls/zm


## pos
# l - (z - l) <=> -y + 2l
# l = -101.000
# 2l = -202.000
scoreboard players operation @s vob.ball.z *= #-1 vob.consts
scoreboard players remove @s vob.ball.z 202000

## inverse velocity
scoreboard players operation @s vob.ball.vz *= #-1 vob.consts

