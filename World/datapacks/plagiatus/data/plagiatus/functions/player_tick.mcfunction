#> plagiatus:player_tick
# elytra stuff
scoreboard players add @s plag.elytra.checkpoint 0
execute if entity @s[x=-2,y=101,z=63,dx=2,dy=0,dz=0,scores={plag.elytra.checkpoint=0..1}] run function plagiatus:elytra/start
execute if entity @s[tag=plag.elytra.playing] run function plagiatus:elytra/player_tick

scoreboard players set @s plag.elytra.flying 0

# lighthouse elevator
execute if entity @s[x=-3,y=64,z=55,dx=4,dy=1,dz=4] run tag @s[x=-1,y=64,z=57,distance=2..] remove plag.lh.top
execute positioned -4 101 54 run tag @s[dx=6,dz=6,dy=6] add plag.lh.top
effect give @s[x=-1,y=63,z=57,dy=35,tag=!plag.lh.top] minecraft:levitation 1 10 false
effect give @s[x=-1,y=63,z=57,dy=4,tag=plag.lh.top] minecraft:slow_falling 1 0 false

# villager advancement
# execute as @a[tag=plag.villager.remove_adv] run function plagiatus:villagers/remove_adv