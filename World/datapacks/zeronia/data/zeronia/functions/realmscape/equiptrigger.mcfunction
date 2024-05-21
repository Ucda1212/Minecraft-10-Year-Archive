execute as @a if score @s equip matches 1 run function zeronia:realmscape/equip
execute as @a if score @s equip matches 2 run tellraw @s [{"color":"aqua","text":" Put any item on your head by holding it in your hand and clicking "},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger equip"},"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click here!","color":"green"}]},"text":"HERE"}]
scoreboard players reset @a equip
scoreboard players enable @a equip