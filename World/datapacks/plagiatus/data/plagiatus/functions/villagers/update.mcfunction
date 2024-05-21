scoreboard players set @s plag.tmp 0

execute if entity @s[advancements={plagiatus:villager/v1=true}] run scoreboard players add @s plag.tmp 1
execute if entity @s[advancements={plagiatus:villager/v2=true}] run scoreboard players add @s plag.tmp 1
execute if entity @s[advancements={plagiatus:villager/v3=true}] run scoreboard players add @s plag.tmp 1
execute if entity @s[advancements={plagiatus:villager/v4=true}] run scoreboard players add @s plag.tmp 1
execute if entity @s[advancements={plagiatus:villager/v5=true}] run scoreboard players add @s plag.tmp 1
execute if entity @s[advancements={plagiatus:villager/v6=true}] run scoreboard players add @s plag.tmp 1

execute if score @s plag.tmp matches 2.. run advancement grant @s only plagiatus:villager/trophy/bronze
execute if score @s plag.tmp matches 4.. run advancement grant @s only plagiatus:villager/trophy/silver
execute if score @s plag.tmp matches 6.. run advancement grant @s only plagiatus:villager/trophy/gold