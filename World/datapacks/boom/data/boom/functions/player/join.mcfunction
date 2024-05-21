scoreboard players set @s boom.timer 0
scoreboard players set @s boom.food 20
scoreboard players reset @s boom.die
effect clear @s regeneration
effect clear @s resistance
effect clear @s speed
effect clear @s slowness
effect clear @s saturation
effect clear @s weakness
effect give @s regeneration 5 1 true
title @s subtitle [{"text":"Don't blow up.","color":"gold"}]
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 10000 0
title @s title [{"text":"PIT","color":"red","bold":true},{"text":" of ","color":"gray"},{"text":"BOOM","color":"dark_red"}]
attribute @s minecraft:generic.attack_damage base set 0.0000000001
tag @s add boom.playing