#> Cycle to next translator
scoreboard players add .splash zeronia.splash 1
execute if score .splash zeronia.splash > .max zeronia.splash run scoreboard players set .splash zeronia.splash 0

#> Playsound
execute at @e[tag=zeronia.splashtext,limit=1] run playsound minecraft:ui.stonecutter.select_recipe master @a ~ ~ ~ 0.2 1.2

#> Update text
#> TODO: Get UUID
execute as @e[tag=zeronia.splashtext,limit=1] run function zeronia:splashtext/splash

#> Revoke advancement
advancement revoke @s only zeronia:splashtext/clicksplash