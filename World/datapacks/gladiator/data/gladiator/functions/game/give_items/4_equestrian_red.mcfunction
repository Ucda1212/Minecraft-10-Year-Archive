clear @s
item replace entity @s hotbar.0 with wooden_sword
item replace entity @s hotbar.8 with cooked_beef 16
item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with leather_leggings
item replace entity @s armor.feet with leather_boots
summon horse -0.50 94.00 534.50 {Team:gladiator_red,Health:40f,Tame:1b,Variant:513,Tags:["gladiator_horse"],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.3375},{Name:horse.jump_strength,Base:0.625}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
ride @s mount @e[type=horse,tag=gladiator_horse,team=gladiator_red,sort=nearest,limit=1]