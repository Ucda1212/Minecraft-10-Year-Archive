execute if entity @s[tag=!plag.bridge] run return 0

execute if entity @s[tag=plag.to_chateau] run data modify entity @s Motion set value [-1d, 0d, 0d]
execute if entity @s[tag=plag.to_chateau,x=-171,y=85,z=164,dx=0,dy=2,dz=0] on passengers positioned -174 87 164 run function plagiatus:bridge/done
execute if entity @s[tag=plag.to_chateau,x=-171,y=85,z=164,dx=0,dy=2,dz=0] run kill @s

execute if entity @s[tag=plag.from_chateau] run data modify entity @s Motion set value [1d, 0d, 0d]
execute if entity @s[tag=plag.from_chateau,x=-98,y=85,z=164,dx=0,dy=2,dz=0] on passengers positioned -95 87 164 run function plagiatus:bridge/done
execute if entity @s[tag=plag.from_chateau,x=-98,y=85,z=164,dx=0,dy=2,dz=0] run kill @s

execute if entity @s[tag=plag.to_zubook] run data modify entity @s Motion set value [-0.89d, 0.21d, 0.37d]
execute if entity @s[tag=plag.to_zubook,x=-186,y=99,z=208,dx=0,dy=2,dz=0] on passengers positioned -189 102 208 run function plagiatus:bridge/done
execute if entity @s[tag=plag.to_zubook,x=-186,y=99,z=208,dx=0,dy=2,dz=0] run kill @s

execute if entity @s[tag=plag.from_zubook] run data modify entity @s Motion set value [0.89d, -0.21d, -0.37d]
execute if entity @s[tag=plag.from_zubook,x=-97,y=78,z=171,dx=0,dy=2,dz=0] on passengers positioned -94 80 171 run function plagiatus:bridge/done
execute if entity @s[tag=plag.from_zubook,x=-97,y=78,z=171,dx=0,dy=2,dz=0] run kill @s

execute if entity @s[tag=plag.to_mart] run data modify entity @s Motion set value [0.35d, -0.14d, 0.37d]
execute if entity @s[tag=plag.to_mart,x=-142,y=61,z=215,dx=0,dy=2,dz=0] on passengers positioned -139 63 215 run function plagiatus:bridge/done
execute if entity @s[tag=plag.to_mart,x=-142,y=61,z=215,dx=0,dy=2,dz=0] run kill @s

execute if entity @s[tag=plag.from_mart] run data modify entity @s Motion set value [-0.35d, 0.14d, -0.37d]
execute if entity @s[tag=plag.from_mart,x=-177,y=75,z=178,dx=0,dy=2,dz=0] on passengers positioned -177 77 175 run function plagiatus:bridge/done
execute if entity @s[tag=plag.from_mart,x=-177,y=75,z=178,dx=0,dy=2,dz=0] run kill @s
