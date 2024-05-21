execute as @s[tag=flcme_MS_left] at @e[type=marker,nbt={data:{flcme:"reader"}}] unless block ~ ~ ~-1 white_wool run function flcme:move/left
execute as @s[tag=flcme_MS_up] at @e[type=marker,nbt={data:{flcme:"reader"}}] unless block ~ ~1 ~ white_wool run function flcme:move/up
execute as @s[tag=flcme_MS_down] at @e[type=marker,nbt={data:{flcme:"reader"}}] unless block ~ ~-1 ~ white_wool run function flcme:move/down
execute as @s[tag=flcme_MS_right] at @e[type=marker,nbt={data:{flcme:"reader"}}] unless block ~ ~ ~1 white_wool run function flcme:move/right
execute as @s[tag=flcme_MS_mine] run function flcme:move/mine
execute as @s[tag=flcme_MS_crate] run function flcme:move/crate
execute at @e[name=flcme.medusa] run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.5 2










