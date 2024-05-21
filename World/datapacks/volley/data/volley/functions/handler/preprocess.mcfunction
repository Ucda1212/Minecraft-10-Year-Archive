#> volley:handler/preprocess

## gravity parameters
scoreboard players operation .precomp.gravity vob.data = .G vob.data
scoreboard players operation .precomp.gravity vob.data *= .ball.mass vob.data
scoreboard players operation .precomp.gravity vob.data /= #1000 vob.consts
scoreboard players operation .precomp.gravity vob.data *= #-1 vob.consts
