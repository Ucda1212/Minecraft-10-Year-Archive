execute store result storage verart:drinks potion_scale float 0.1 run random value 1..50
execute as @s run function verart:pizzeria/drinks/modify_scale with storage verart:drinks
advancement revoke @s only verart:funny
advancement revoke @s only verart:not_so_funny