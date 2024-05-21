tellraw @s [{"text":"[Cuybeck] ","color":"white","bold":true},{"text":"You need to visit every build in this world and collect every trophy. I'm counting on you, ","color":"white","bold":false},{"selector":"@s","color":"white","bold":false},{"text":"!","color":"white","bold":false}]
playsound entity.sheep.ambient master @s ~ ~ ~ 2 1
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force @s
advancement grant @s only fasading:sheep_whisperer speak_with_cuybeck