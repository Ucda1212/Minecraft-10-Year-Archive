scoreboard players add @s plag.villager.timer 1
execute if score @s plag.villager.timer matches ..10 run return 0
advancement revoke @s only plagiatus:villager/one
tag @s remove plag.villager.remove_adv