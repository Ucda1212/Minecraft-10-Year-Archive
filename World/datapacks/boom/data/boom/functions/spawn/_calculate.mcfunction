scoreboard players add $wave boom 1
execute store result score $players boom if entity @a[gamemode=adventure,tag=boom.playing]
scoreboard players operation $players boom /= $2 boom.num
execute if score $players boom matches ..0 run scoreboard players set $players boom 1
execute if score $players boom matches 8.. run scoreboard players set $players boom 7
scoreboard players operation $mobs boom = $wave boom
scoreboard players operation $mobs boom /= $3 boom.num
scoreboard players operation $mobs boom *= $players boom
execute if score $mobs boom matches 36.. run scoreboard players set $mobs boom 35