kill @s
summon minecraft:interaction 279.65 70.21 -16 {height:0.56,width:0.56,Tags:["flcme_MS_down","flcmeinterclear"]}
execute as @e[type=marker,nbt={data:{flcme:"reader"}}] at @s run tp @s ~ ~-1 ~
execute as @e[name=flcme.medusa] at @s run tp @s ~ ~-1 ~


