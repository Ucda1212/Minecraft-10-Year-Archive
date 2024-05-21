# Executes a single filter iteration and calls the next one
#say hi @e[tag=dpbar.result]
execute if score $filter dpbar.tmp matches 1.. as @e[tag=dpbar.candidate,tag=dpbar.result] run function dpbar:filter/check_filter
execute if score $filter dpbar.tmp matches 0 run tag @e[tag=dpbar.candidate,tag=dpbar.result] add dpbar.in_filter

execute store success score $success dpbar.tmp if predicate dpbar:look_at_filter

execute if score $success dpbar.tmp matches 0 run tag @e[tag=dpbar.candidate,tag=dpbar.in_filter] remove dpbar.result
execute if score $success dpbar.tmp matches 1 run tag @e[tag=dpbar.candidate,tag=!dpbar.in_filter] remove dpbar.result

scoreboard players operation $filter dpbar.tmp *= 2 dpbar.const
execute if score $filter dpbar.tmp matches 0 run scoreboard players set $filter dpbar.tmp 1

execute if entity @e[tag=dpbar.candidate,tag=dpbar.result,limit=1] if score $filter dpbar.tmp <= $max dpbar.tmp run function dpbar:filter/iteration
