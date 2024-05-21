execute as @e[type=interaction,tag=eroxen_lom.plug,distance=..16,nbt={interaction:{}}] at @s run function eroxen_lom:internal/activate_plug

execute at @e[type=interaction,tag=eroxen_lom.plug,distance=..16] run particle end_rod ~ ~0.25 ~ 0.2 0.2 0.2 0 1