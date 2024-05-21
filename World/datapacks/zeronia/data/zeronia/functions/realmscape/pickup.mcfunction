kill @e[type=item,tag=zeronia.realmscape]
clear @s minecraft:diamond[minecraft:custom_data~{zeronia_cape:1b}]
give @s minecraft:diamond[item_name='{"text":"Realms Mapmaker Cape"}',lore=['{"color":"gray","italic":false,"text":"You could earn yourself one"}','{"color":"gray","italic":false,"text":"of these someday!"}'],custom_model_data=1,max_stack_size=1]
schedule clear zeronia:realmscape/main
schedule function zeronia:realmscape/summon 5s
advancement revoke @s only zeronia:realmscape/cape_pickup