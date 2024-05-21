scoreboard players operation $selected dpbar.tmp = @s dpbar.tmp
scoreboard players operation $selected dpbar.tmp /= $filter dpbar.tmp
scoreboard players operation $selected dpbar.tmp %= 2 dpbar.const
tag @s remove dpbar.in_filter
execute if score $selected dpbar.tmp matches 1 run tag @s add dpbar.in_filter
