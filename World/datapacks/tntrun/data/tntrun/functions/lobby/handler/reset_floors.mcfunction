#> tntrun:lobby/handler/reset_floors

# Break old map
fill 30 -49 -125 78 -13 -77 light[level=15]
execute positioned 30.18 -45.00 -124.68 as @e[type=minecraft:falling_block] if entity @s[dx=50,dy=50,dz=50,nbt={Time:5}] run data modify entity @s Time set value 595
execute positioned 30.18 -45.00 -124.68 as @e[type=minecraft:item] if entity @s[dx=50,dy=50,dz=50] run kill @s

# Floor 1
execute if score .started vrt.tr.game matches 0 as @e[type=minecraft:marker,sort=random,limit=1,tag=vrt.tr.floor_anchor] at @s run clone ~1 ~ ~1 ~49 ~-1 ~49 30 -14 -125 replace
# Floor 2
execute if score .started vrt.tr.game matches 0 as @e[type=minecraft:marker,sort=random,limit=1,tag=vrt.tr.floor_anchor] at @s run clone ~1 ~ ~1 ~49 ~-1 ~49 30 -26 -125 replace
# Floor 3
execute if score .started vrt.tr.game matches 0 as @e[type=minecraft:marker,sort=random,limit=1,tag=vrt.tr.floor_anchor] at @s run clone ~1 ~ ~1 ~49 ~-1 ~49 30 -37 -125 replace

