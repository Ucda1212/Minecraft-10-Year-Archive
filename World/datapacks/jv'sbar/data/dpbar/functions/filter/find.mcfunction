# declare score_holder $max The highest entity score
scoreboard players set $max dpbar.tmp 0
# declare tag dpbar.candidate
# declare tag dpbar.result
tag @e remove dpbar.result
tag @e[tag=dpbar.candidate] add dpbar.result
# Assign unique score to each entity
execute as @e[tag=dpbar.result] store result score @s dpbar.tmp run scoreboard players add $max dpbar.tmp 1

# declare score_holder $filter The rule by which to filter entities
scoreboard players set $filter dpbar.tmp 0

# declare tag dpbar.in_filter
tag @e remove dpbar.in_filter
function dpbar:filter/iteration

scoreboard players operation @s dpbar.id = @e[tag=dpbar.result,limit=1] dpbar.tmp

# execute as @e[tag=dpbar.human] run effect clear @s glowing
# execute as @e[tag=dpbar.result] run effect give @s glowing 1 1 true
