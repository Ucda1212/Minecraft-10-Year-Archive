# Handle breaking floor when running
execute positioned 30.18 -45.00 -124.68 as @e[type=minecraft:falling_block] if entity @s[dx=50,dy=50,dz=50,nbt={Time:5}] run data modify entity @s Time set value 595
execute positioned 30.18 -45.00 -124.68 as @e[type=minecraft:item] if entity @s[dx=50,dy=50,dz=50] run kill @s

execute if score .floor vrt.tr.game matches 1.. run return fail

execute positioned 55.5 -36.0 -99.5 positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=3,dz=50] at @s run fill ~-0.2 -37 ~-0.2 ~0.2 -37 ~0.2 air
execute positioned 55.5 -25.0 -99.5 positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=3,dz=50] at @s run fill ~-0.2 -26 ~-0.2 ~0.2 -26 ~0.2 air
execute positioned 55.5 -13.0 -99.5 positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=3,dz=50] at @s run fill ~-0.2 -14 ~-0.2 ~0.2 -14 ~0.2 air

