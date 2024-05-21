execute as @e[type=minecraft:glow_item_frame,x=245,y=82,z=359,dz=4,dy=4,dx=1,nbt={ItemRotation:4b}] run data modify entity @s ItemRotation set value 0b

scoreboard players add timer puzzlewars.current_score 1

function puzzlewars:count_solution
execute unless score score puzzlewars.current_score matches 16 run return fail

execute unless score @s puzzlewars.results matches -2147483648..2147483647 store result score @s puzzlewars.results run scoreboard players get timer puzzlewars.current_score
execute if score @s puzzlewars.results > timer puzzlewars.current_score store result score @s puzzlewars.results run scoreboard players get timer puzzlewars.current_score

#Print result
scoreboard players operation seconds puzzlewars.current_score = timer puzzlewars.current_score
scoreboard players operation miliseconds puzzlewars.current_score = timer puzzlewars.current_score

scoreboard players operation seconds puzzlewars.current_score /= #20 puzzlewars.util
scoreboard players operation miliseconds puzzlewars.current_score %= #20 puzzlewars.util
scoreboard players operation miliseconds puzzlewars.current_score *= #50 puzzlewars.util

execute if score miliseconds puzzlewars.current_score matches 100.. run tellraw @s ["",{"text":"You completed the puzzle in ","color":"gold"},{"score":{"name":"seconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"miliseconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":" seconds.","color":"gold"}]

execute if score miliseconds puzzlewars.current_score matches 10..99 run tellraw @s ["",{"text":"You completed the puzzle in ","color":"gold"},{"score":{"name":"seconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"miliseconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":" seconds.","color":"gold"}]

execute if score miliseconds puzzlewars.current_score matches ..9 run tellraw @s ["",{"text":"You completed the puzzle in ","color":"gold"},{"score":{"name":"seconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":".00","color":"white"},{"score":{"name":"miliseconds","objective":"puzzlewars.current_score"},"color":"white"},{"text":" seconds.","color":"gold"}]

tp @s 251.5 82 361.0 90 0