execute at @s[tag=!allowed] positioned ~0.3 ~ ~ if entity @e[type=item_display, tag=polyform.letter, distance=0.1..1.2] run tag @s add allowed
execute at @s[tag=allowed, tag=!light_gray_cell ] positioned ~0.3 ~ ~ unless entity @e[type=item_display, tag=polyform.letter, distance=0.1..1.2] run tag @s remove allowed
# probably unused