scoreboard players operation tile_x eroxen_lom.x = @s eroxen_lom.x
scoreboard players operation tile_y eroxen_lom.x = @s eroxen_lom.y

scoreboard players operation tile_x_m1 eroxen_lom.x = tile_x eroxen_lom.x
scoreboard players remove tile_x_m1 eroxen_lom.x 1
scoreboard players operation tile_x_p1 eroxen_lom.x = tile_x eroxen_lom.x
scoreboard players add tile_x_p1 eroxen_lom.x 1
scoreboard players operation tile_y_m1 eroxen_lom.x = tile_y eroxen_lom.x
scoreboard players remove tile_y_m1 eroxen_lom.x 1
scoreboard players operation tile_y_p1 eroxen_lom.x = tile_y eroxen_lom.x
scoreboard players add tile_y_p1 eroxen_lom.x 1

function eroxen_lom:internal/anchor_swap
execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if score @s eroxen_lom.x = tile_x_m1 eroxen_lom.x if score @s eroxen_lom.y = tile_y eroxen_lom.x run function eroxen_lom:internal/anchor_swap
execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if score @s eroxen_lom.x = tile_x_p1 eroxen_lom.x if score @s eroxen_lom.y = tile_y eroxen_lom.x run function eroxen_lom:internal/anchor_swap
execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if score @s eroxen_lom.x = tile_x eroxen_lom.x if score @s eroxen_lom.y = tile_y_m1 eroxen_lom.x run function eroxen_lom:internal/anchor_swap
execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if score @s eroxen_lom.x = tile_x eroxen_lom.x if score @s eroxen_lom.y = tile_y_p1 eroxen_lom.x run function eroxen_lom:internal/anchor_swap