#> volley:sim/ball/summon/nested

# actual data
data merge entity @s {Glowing:1b, brightness:{sky:10, block:10}, Tags:["vob.ball"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.375f,0f],scale:[.5f,.5f,.5f]}, item:{id:"minecraft:white_wool",Count:1b}, teleport_duration:1}

# interaction
summon interaction ~ ~ ~ {width:0.75f,height:0.75f,Tags:["vob.ball_interaction"]}
ride @e[tag=vob.ball_interaction,limit=1,sort=nearest] mount @s

# simulated data
execute store result score @s vob.ball.x run data get entity @s Pos[0] 1000
execute store result score @s vob.ball.y run data get entity @s Pos[1] 1000
execute store result score @s vob.ball.z run data get entity @s Pos[2] 1000

scoreboard players set @s vob.ball.vx 0
scoreboard players set @s vob.ball.vy 0
scoreboard players set @s vob.ball.vz 0
scoreboard players set @s vob.ball.vtx 0
scoreboard players set @s vob.ball.vty 0
scoreboard players set @s vob.ball.vtz 0
scoreboard players set @s vob.ball.ax 0
scoreboard players set @s vob.ball.ay 0
scoreboard players set @s vob.ball.az 0

