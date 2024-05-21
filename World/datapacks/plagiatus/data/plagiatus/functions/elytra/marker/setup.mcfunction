
scoreboard players operation @s plag.elytra.checkpoint = #total plag.elytra.checkpoint
scoreboard players add #total plag.elytra.checkpoint 1

scoreboard players operation #tmp plag.tmp = @s plag.elytra.checkpoint

# (re)place text display
kill @e[tag=plag.elytra.checkpoint,type=text_display,distance=..4]
execute if entity @s[tag=plag.elytra.x] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"score":{"name":"#tmp","objective":"plag.tmp"}}', background: 0}
# execute if entity @s[tag=plag.elytra.x] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[-10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,-0.0000f,0.0000f,-10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"score":{"name":"#tmp","objective":"plag.tmp"}}', background: 0}
execute if entity @s[tag=plag.elytra.y] run summon text_display ~ ~ ~ {width: 7, height: 1, Tags:["plag.elytra.checkpoint"],transformation:[10.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,10.0000f,0.0000f,0.0000f,-10.0000f,-0.0000f,1.5000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"score":{"name":"#tmp","objective":"plag.tmp"}}', background: 0}
execute if entity @s[tag=plag.elytra.z] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[-0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,-10.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"score":{"name":"#tmp","objective":"plag.tmp"}}', background: 0}
# execute if entity @s[tag=plag.elytra.z] run summon text_display ~ ~-1.5 ~ {width: 7, height: 7, Tags:["plag.elytra.checkpoint"],transformation:[-0.0000f,0.0000f,-10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,0.0000f,10.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"score":{"name":"#tmp","objective":"plag.tmp"}}', background: 0}
