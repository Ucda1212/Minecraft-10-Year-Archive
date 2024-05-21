effect give @s conduit_power 3 127 true
execute store result score $yaw dolphin run data get entity @s Rotation[0] 100
execute store result score $pitch dolphin run data get entity @s Rotation[1] 100
execute on vehicle store result entity @s Rotation[0] float 0.01 run scoreboard players get $yaw dolphin
execute on vehicle store result entity @s Rotation[1] float 0.01 run scoreboard players get $pitch dolphin
scoreboard players set $riding dolphin 0
execute on vehicle as @s[tag=dolphins.ride] run scoreboard players set $riding dolphin 1
execute if score $riding dolphin matches 0 run tag @s remove dolphins.rider