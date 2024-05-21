scoreboard players operation #ring plag.tmp = @s plag.elytra.checkpoint

execute if entity @s[tag=plag.elytra.x] positioned ~-2 ~-2 ~-1 align xyz run tag @a[tag=plag.elytra.playing,dx=4,dy=4,dz=2] add plag.elytra.in_ring
execute if entity @s[tag=plag.elytra.y] positioned ~-2 ~-1 ~-2 align xyz run tag @a[tag=plag.elytra.playing,dx=4,dz=4,dy=2] add plag.elytra.in_ring
execute if entity @s[tag=plag.elytra.z] positioned ~-1 ~-2 ~-2 align xyz run tag @a[tag=plag.elytra.playing,dy=4,dz=4,dx=2] add plag.elytra.in_ring

execute as @a[tag=plag.elytra.in_ring] if score @s plag.elytra.checkpoint = #ring plag.tmp run function plagiatus:elytra/marker/check

tag @a remove plag.elytra.in_ring