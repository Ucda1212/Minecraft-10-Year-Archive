summon marker 11 108.5 10 {Tags:["plag.elytra.checkpoint", "plag.elytra.z", "plag.40"]}
summon marker 11 108.5 10 {Tags:["plag.elytra.checkpoint", "plag.elytra.z", "plag.19"]}

scoreboard players set @e[tag=plag.40] plag.elytra.checkpoint 40
scoreboard players set @e[tag=plag.19] plag.elytra.checkpoint 19

execute as @e[type=marker,tag=plag.elytra.checkpoint,limit=1,scores={plag.elytra.checkpoint=19},distance=..3] at @s run execute if entity @s[tag=plag.elytra.z] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[-0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"19"}', background: 0}
execute as @e[type=marker,tag=plag.elytra.checkpoint,limit=1,scores={plag.elytra.checkpoint=40},distance=..3] at @s run execute if entity @s[tag=plag.elytra.z] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[-0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,-10.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"40"}', background: 0}