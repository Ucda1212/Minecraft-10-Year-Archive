data modify storage verart:drinks potion_scale set value 1f
execute as @s run function verart:pizzeria/drinks/modify_scale with storage verart:drinks
advancement revoke @s only verart:funny
advancement revoke @s only verart:not_so_funny