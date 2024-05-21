##This function should run as an entity with tag neylz_npc_interaction 


execute on target if score @s vrt.nlz.seahorse matches 1 run function verart:pizzeria/npcs/neylz/second
execute on target unless score @s vrt.nlz.seahorse matches 1 run function verart:pizzeria/npcs/neylz/first



data remove entity @s interaction 