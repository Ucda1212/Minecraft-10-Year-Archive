execute as @e[scores={zeronia.bellRang=1..},x=30,y=58,z=-12,dx=10,dy=10,dz=10] run function zeronia:boat/rang
scoreboard players reset * zeronia.bellRang
execute if score .cd zeronia.boatCooldown > .min zeronia.boatCooldown run scoreboard players remove .cd zeronia.boatCooldown 1