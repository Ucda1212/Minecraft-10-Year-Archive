## update time for record
scoreboard players operation .record.t bnsd.recordtime = @s bnsd.time

tellraw @a[x=-326,y=65,z=-164,dx=-83,dy=21,dz=-68] [{"text":"<!> ","color": "green","bold": false},{"selector":"@s","bold":true,"color":"gold"},{"text":" set a new record!","color": "green","bold": false}]
execute as @a[x=-326,y=65,z=-164,dx=-83,dy=21,dz=-68] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 2
function bnsd:calculatetime


## update lb
tag @s add bnsd.newrecord
data merge entity @e[type=text_display,limit=1,sort=nearest,tag=bnsd.lb2] {text:'[{"selector":"@a[tag=bnsd.newrecord]"},{"color":"gold","text":" - "},{"score":{"name":".record.min","objective":"bnsd.recordtime"}},{"text":":"},{"score":{"name":".record.sec","objective":"bnsd.recordtime"}},{"text":":"},{"score":{"name":".record.ms","objective":"bnsd.recordtime"}}]'}
tag @s remove bnsd.newrecord