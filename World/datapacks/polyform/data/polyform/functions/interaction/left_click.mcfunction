execute at @s[tag=!polyform.rolling, tag=polyform.move] at @e[type=interaction, tag=polyform.table, nbt={attack:{}}, limit=1, sort=nearest] if entity @e[type=item_display, tag=polyform.letter,limit=1, distance=..0.3] run function polyform:game/remove_letter

execute at @s as @e[type=interaction, tag=polyform.table, nbt={attack:{}}, limit=1, sort=nearest] run data remove entity @s attack
advancement revoke @s only polyform:attack
