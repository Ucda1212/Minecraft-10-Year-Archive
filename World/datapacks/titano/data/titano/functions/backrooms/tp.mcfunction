tp @s 94 12 -220 -148 0
playsound minecraft:music_disc.mellohi master @s 94 12 -220 100 0
title @s title {"text":""}
title @s subtitle {"text":"You've phased through reality...","color":"red"}
effect clear @s night_vision
effect give @s minecraft:darkness 10 10
tellraw @s {"text":"If you do not feel like escaping the Liminal Space or start to go crazy, try clicking on the birch sign behind where you spawned","italic":true,"color":"gray"}