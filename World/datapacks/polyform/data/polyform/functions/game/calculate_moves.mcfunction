# tag @s add polyform.processing
# 
# scoreboard players operation Temp.player polyform.identifier = @s polyform.identifier
# execute as @a[tag=polyform.started, tag=!polyform.processing] if score @s polyform.identifier = Temp.player polyform.identifier run tag @s add duplicated
# 
# tag @s remove polyform.processing

#revetsed score search

# find min score
execute as @a[tag=polyform.started] if score @s polyform.identifier = Temp. polyform.identifier if score Temp. polyform.order > @s polyform.score run scoreboard players operation Temp. polyform.order = @s polyform.score
execute as @a[tag=polyform.started, sort=random] if score @s polyform.identifier = Temp. polyform.identifier if score Temp. polyform.order = @s polyform.score run function polyform:game/set_move