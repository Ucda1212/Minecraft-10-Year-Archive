kill @e[type=item,tag=zeronia.realmscape]
summon item -3.0 65 -23.0 {Glowing:1b,Age:-32768,PickupDelay:40,Invulnerable:1b,Tags:["zeronia.realmscape"],Item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_name":'{"text":" "}',"minecraft:lore":['{"color":"gray","italic":false,"text":"If you have this"}','{"italic":false,"color":"gray","text":"the functions are broken"}'],"minecraft:custom_model_data":1,"minecraft:custom_data":{zeronia_cape:1b}}}}
team join highlight.yellow @e[type=item,tag=zeronia.realmscape,limit=1]
playsound minecraft:entity.item.pickup master @a -3.0 65 -23.0 0.8 1
schedule clear zeronia:realmscape/main
schedule function zeronia:realmscape/main 4t