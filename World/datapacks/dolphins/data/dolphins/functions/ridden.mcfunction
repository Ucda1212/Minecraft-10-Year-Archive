#> dolphins:ridden
#execute unless block ~ ~-1 ~ #dolphins:swimmable unless block ~ ~ ~ #dolphins:breathable run kill @s
execute if block ~ ~ ~ #dolphins:breathable run particle bubble ~ ~-1 ~ 0.5 0.5 0.5 1 5 normal
scoreboard players set $ridden dolphin 0
execute on passengers as @s[tag=dolphins.rider] run scoreboard players set $ridden dolphin 1
execute unless score $ridden dolphin matches 1 run tp @s ~ -1000 ~
execute unless score $ridden dolphin matches 1 run kill @s