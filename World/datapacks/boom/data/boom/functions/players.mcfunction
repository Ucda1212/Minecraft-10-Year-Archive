execute as @s[gamemode=adventure,tag=boom.playing] if score @s boom.die matches 1.. run tag @s add boom.dead
execute as @s[gamemode=adventure,tag=boom.playing] if score @s boom.die matches 1.. run schedule function boom:player/process_dead 10t replace

execute if entity @s[gamemode=adventure,x=273,y=106,z=111,dx=27,dy=4,dz=27,tag=!boom.playing] run function boom:player/join
execute unless entity @s[gamemode=adventure,x=273,y=106,z=111,dx=27,dy=4,dz=27] run clear @s[tag=boom.playing] stick[minecraft:custom_data={boom.stick:1}]
execute unless entity @s[gamemode=adventure,x=273,y=106,z=111,dx=27,dy=4,dz=27] run attribute @s[tag=boom.playing] minecraft:generic.attack_damage base set 1.0
execute unless entity @s[gamemode=adventure,x=273,y=106,z=111,dx=27,dy=4,dz=27] run tag @s[tag=boom.playing] remove boom.playing

execute as @s[gamemode=adventure,tag=boom.playing] run function boom:player/main