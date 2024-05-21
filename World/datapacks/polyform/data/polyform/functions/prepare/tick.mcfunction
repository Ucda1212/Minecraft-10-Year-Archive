# highlight corners
execute as @e[type=block_display, tag=polyform.red_corner, dx=15, dz=15, dy=2, limit=8] at @s run function polyform:prepare/highlight
execute as @a[tag=polyform.ready] at @s unless predicate polyform:red run function polyform:prepare/leave


# check player count
execute store result score @s polyform.ready if entity @a[tag=polyform.ready, dx=15, dz=15, dy=2, limit=8]
execute if score @s polyform.ready matches 2..8 at @s run function polyform:prepare/countdown
execute unless score @s polyform.ready matches 2..8 run scoreboard players reset @s polyform.countdown
