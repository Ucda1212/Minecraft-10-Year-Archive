#this is run only when a player is within range of the FC plot (i.e. 60 distance)

execute positioned -242 123.00 90 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.1"}
execute positioned -243 124 73 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.2"}
execute positioned -226 123 67 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.3"}
execute positioned -235.94 122.00 59.05 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.4"}
execute positioned -251.86 122.00 54.05 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.5"}
execute positioned -267.45 134.00 50.70 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.6"}
execute positioned -270.03 125.00 34.92 if entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:allium"}}] as @p run function fingermaps:grant_advancement {id:"fm.7"}

item replace block -252 122 66 container.11 with allium[custom_name='{"color":"#948C72","italic":false,"text":"Stale Bread"}',custom_model_data=4] 1
item replace block -252 122 66 container.12 with allium[custom_name='{"color":"#948C72","italic":false,"text":"Stale Bread"}',custom_model_data=4] 1
item replace block -252 122 66 container.13 with allium[custom_name='{"color":"#948C72","italic":false,"text":"Stale Bread"}',custom_model_data=4] 1
item replace block -252 122 66 container.14 with allium[custom_name='{"color":"#948C72","italic":false,"text":"Stale Bread"}',custom_model_data=4] 1
item replace block -252 122 66 container.15 with allium[custom_name='{"color":"#948C72","italic":false,"text":"Stale Bread"}',custom_model_data=4] 1

#Assume they don't have a bread item
execute as @s[distance=..50] run scoreboard players set @s fm.has_item 0
execute as @s[distance=..10,tag=!fm.music] store result score @s fm.has_item run clear @s minecraft:allium[custom_model_data=4] 0
#If they do, we'll queue the music and add them to le music group!
execute as @s[scores={fm.has_item=1..},tag=!fm.has_music] run function fingermaps:music

#This is to reset the advancements & tags if they don't got the base advancement
execute unless entity @s[advancements={fingermaps:fc/feed_1=true}] run function fingermaps:revoke_advancements

#Clear/stop players upon exiting the plot
execute as @s[distance=50..,tag=fm.in_plot] run function fingermaps:plot_exit
execute as @s[distance=..50,tag=!fm.in_plot] run function fingermaps:plot_enter