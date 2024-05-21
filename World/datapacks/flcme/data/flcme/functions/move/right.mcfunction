kill @s
summon minecraft:interaction 279.65 70.21 -15 {height:0.56,width:0.56,Tags:["flcme_MS_right","flcmeinterclear"]}
execute as @e[type=marker,nbt={data:{flcme:"reader"}}] at @s run tp @s ~ ~ ~1
execute as @e[name=flcme.medusa] at @s run tp @s ~ ~ ~1