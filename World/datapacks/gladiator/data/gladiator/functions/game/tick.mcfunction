execute as @s[tag=gladiator_playing] if score @s gladiator_death matches 1.. run function gladiator:game/i_died
execute unless entity @a[tag=gladiator_blue] run function gladiator:game/red_win
execute unless entity @a[tag=gladiator_red] run function gladiator:game/blue_win