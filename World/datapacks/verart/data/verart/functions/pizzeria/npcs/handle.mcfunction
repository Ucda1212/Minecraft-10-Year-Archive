##This function should run as an entity with the tag verart_npc_interaction that was interacted

execute if entity @s[tag=tobies_npc_interaction] run return run function verart:pizzeria/npcs/handle_tobies
execute if entity @s[tag=rishon_npc_interaction] run return run function verart:pizzeria/npcs/handle_rishon
execute if entity @s[tag=edou_npc_interaction] run return run function verart:pizzeria/npcs/handle_edou
execute if entity @s[tag=spritzu_npc_interaction] run return run function verart:pizzeria/npcs/handle_spritzu
execute if entity @s[tag=neylz_npc_interaction] run return run function verart:pizzeria/npcs/handle_neylz
execute if entity @s[tag=neylz_volly_npc_interaction] run return run function verart:pizzeria/npcs/handle_neylz_volly
execute if entity @s[tag=delth_npc_interaction] run return run function verart:pizzeria/npcs/handle_delth
execute if entity @s[tag=verart_socials_interaction] run return run function verart:pizzeria/npcs/handle_socials
