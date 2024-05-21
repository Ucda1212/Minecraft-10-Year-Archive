function eroxen_lom:api/clear


execute as @e[type=marker,tag=eroxen_lom.redstone_block_anchor] if predicate eroxen_lom:coin_flip run function eroxen_lom:internal/anchor_swap_area
scoreboard players set won eroxen_lom.x 0