#boat warps
execute if score @s quillmark_click matches 1.. run function quillmark:pre_teleport

#fog hole teleport out
execute if entity @s[x=100,y=54,z=397,dx=11,dy=2,dz=50,gamemode=!spectator] run tp @s 106.5 69.00 445.5 180 0