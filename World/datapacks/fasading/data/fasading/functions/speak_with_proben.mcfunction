tellraw @s [{"text":"[Proben] ","color":"white","bold":true},{"text":"Hmmm... What's on the other side of that trapdoor?","color":"white","bold":false}]
playsound entity.sheep.ambient master @s ~ ~ ~ 2 1
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force @s
advancement grant @s only fasading:sheep_whisperer speak_with_proben