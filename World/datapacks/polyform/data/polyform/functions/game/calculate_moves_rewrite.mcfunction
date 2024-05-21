# наименьшее
scoreboard players set Temp. polyform.order 10000
execute as @a[tag=polyform.started] if score @s polyform.identifier = Temp. polyform.identifier if score Temp. polyform.order > @s polyform.score run scoreboard players operation Temp. polyform.order = @s polyform.score

execute as @a[tag=polyform.started] if score @s polyform.identifier = Temp. polyform.identifier if score Temp. polyform.order = @s polyform.score run tag @s add polyform.temp
execute as @a[tag=polyform.temp, limit=1, sort=random] run function polyform:game/calculate_moves_rewrite_2
