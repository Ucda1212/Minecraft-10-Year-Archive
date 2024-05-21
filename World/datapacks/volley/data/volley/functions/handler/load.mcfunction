#> volley:handler/load

## setup
function volley:handler/setup


## constants
scoreboard players set .velcoef vob.data 650
scoreboard players set .G vob.data 9807
scoreboard players set .ball.mass vob.data 6
# consider air friction as a polynomial ax²+bx+c
scoreboard players set .friction.air.a vob.data 1000
scoreboard players set .friction.air.b vob.data 1000
scoreboard players set .friction.air.c vob.data 1000
scoreboard players set .friction.bounce vob.data 240
scoreboard players set .friction.bounce.xz vob.data 900


## preprocess
function volley:handler/preprocess


w Neylz Volley loaded!