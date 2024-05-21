# white if player is above
execute at @a[distance=..3, tag=!polyform.ready] if predicate polyform:red run data modify entity @s glow_color_override set value 16777210
execute at @a[distance=..3, tag=!polyform.ready] unless predicate polyform:red run data modify entity @s glow_color_override set value 3618615


execute at @a[distance=..3, tag=!polyform.ready] if predicate polyform:red run data modify entity @s transformation.scale[1] set value 0.05f
execute at @a[distance=..3, tag=!polyform.ready] unless predicate polyform:red run data modify entity @s transformation.scale[1] set value 0.15f