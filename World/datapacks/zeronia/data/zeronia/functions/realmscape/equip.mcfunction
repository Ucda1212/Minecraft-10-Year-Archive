item replace entity @e[type=armor_stand,tag=zeronia.equip.dummy,limit=1] armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s armor.head
item replace entity @s armor.head from entity @e[type=armor_stand,tag=zeronia.equip.dummy,limit=1] armor.head
item replace entity @e[type=armor_stand,tag=zeronia.equip.dummy,limit=1] armor.head with minecraft:air
scoreboard players reset @s equip