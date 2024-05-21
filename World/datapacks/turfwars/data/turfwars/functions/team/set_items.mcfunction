#[ Team Set Items ]#

#: clear in game player inventory
clear @s leather_chestplate 1
clear @s leather_boots 1
clear @s light_blue_wool 1028
clear @s blue_wool 1028
clear @s arrow 1028
clear @s bow 1028

#: bow
item replace entity @s container.0 from block -299 102 402 container.0

#: arrow
#item replace entity @s container.8 from block -299 102 402 container.1

#: blocks
execute if entity @s[team=turfwars.dmd_team] run item replace entity @s container.1 from block -299 102 402 container.2
execute if entity @s[team=turfwars.lps_team] run item replace entity @s container.1 from block -299 102 402 container.5

#: armor chestplate
execute if entity @s[team=turfwars.dmd_team] run item replace entity @s armor.chest from block -299 102 402 container.3
execute if entity @s[team=turfwars.lps_team] run item replace entity @s armor.chest from block -299 102 402 container.6

#: armor boots
execute if entity @s[team=turfwars.dmd_team] run item replace entity @s armor.feet from block -299 102 402 container.4
execute if entity @s[team=turfwars.lps_team] run item replace entity @s armor.feet from block -299 102 402 container.7
