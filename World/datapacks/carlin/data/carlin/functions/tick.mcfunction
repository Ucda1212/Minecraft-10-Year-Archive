execute if entity @a[x=-82,y=75,z=180,dx=0,dy=0,dz=0] run tp @a[x=-82,y=75,z=180,dx=0,dy=0,dz=0] -89 -30 295

execute if entity @a[x=-91,y=-30,z=301,dx=0,dy=0,dz=0] run tp @a[x=-91,y=-30,z=301,dx=0,dy=0,dz=0] -89 75 180

execute if entity @a[x=-65,y=-43,z=171,dx=0,dy=0,dz=0] run tp @a[x=-65,y=-43,z=171,dx=0,dy=0,dz=0] -57 64 171

execute if entity @a[x=-169,y=-61,z=251,dx=162,dy=284,dz=318] run effect give @a[x=-169,y=-61,z=251,dx=162,dy=284,dz=318] minecraft:water_breathing 30 1 true

execute if entity @a[x=-169,y=-61,z=251,dx=162,dy=284,dz=318] run effect give @a[x=-169,y=-61,z=251,dx=162,dy=284,dz=318] minecraft:saturation 30 1 true

execute if entity @a[gamemode=adventure,x=-90,y=-30,z=369,dx=3,dy=3,dz=3] run tag @a[gamemode=adventure,x=-90,y=-30,z=369,dx=3,dy=3,dz=3] add MazeBoi

execute if entity @a[gamemode=adventure,x=-89,y=75,z=183,dx=3,dy=3,dz=3] run tag @a[gamemode=adventure,x=-89,y=75,z=183,dx=3,dy=3,dz=3] remove MazeBoi

execute if entity @a[gamemode=adventure,limit=1,x=-91,y=82,z=404,dx=5,dy=2,dz=5,tag=MazeBoi] run function carlin:finish