execute store result score x_rotation eroxen_lom.x run data get entity @s Rotation[0] 10
execute store result score y_rotation eroxen_lom.x run data get entity @s Rotation[1] 10

scoreboard players set tile_x eroxen_lom.x -1
scoreboard players set tile_y eroxen_lom.x -1
execute if score x_rotation eroxen_lom.x matches -645..-575 run scoreboard players set tile_x eroxen_lom.x 1
execute if score x_rotation eroxen_lom.x matches -575..-505 run scoreboard players set tile_x eroxen_lom.x 2
execute if score x_rotation eroxen_lom.x matches -505..-435 run scoreboard players set tile_x eroxen_lom.x 3
execute if score x_rotation eroxen_lom.x matches -435..-365 run scoreboard players set tile_x eroxen_lom.x 4
execute if score x_rotation eroxen_lom.x matches -365..-295 run scoreboard players set tile_x eroxen_lom.x 5

execute if score y_rotation eroxen_lom.x matches -240..-155 run scoreboard players set tile_y eroxen_lom.x 1
execute if score y_rotation eroxen_lom.x matches -296..-240 run scoreboard players set tile_y eroxen_lom.x 2
execute if score y_rotation eroxen_lom.x matches -355..-296 run scoreboard players set tile_y eroxen_lom.x 3
execute if score y_rotation eroxen_lom.x matches -420..-355 run scoreboard players set tile_y eroxen_lom.x 4
execute if score y_rotation eroxen_lom.x matches -477..-420 run scoreboard players set tile_y eroxen_lom.x 5

execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if score @s eroxen_lom.x = tile_x eroxen_lom.x if score @s eroxen_lom.y = tile_y eroxen_lom.x run function eroxen_lom:internal/anchor_swap_area

execute if score won eroxen_lom.x matches 0 unless entity @e[type=marker,tag=eroxen_lom.redstone_block_anchor.on] positioned -148 67 176 run function eroxen_lom:internal/game/internal/win