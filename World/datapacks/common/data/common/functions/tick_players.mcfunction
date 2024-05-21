#> common:tick_players

scoreboard players enable @s spawn
execute if score @s spawn matches 1.. run function common:spawn/tp
