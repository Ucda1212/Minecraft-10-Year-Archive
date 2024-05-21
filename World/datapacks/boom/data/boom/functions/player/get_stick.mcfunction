kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{boom.stick:1}}}}]
clear @s stick[minecraft:custom_data={boom.stick:1}]
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

item replace entity @s hotbar.0 with stick[minecraft:custom_data={boom.stick:1},minecraft:item_name='{"text":"Stick","color":"gold"}',minecraft:enchantments={levels:{knockback:3}},minecraft:attribute_modifiers={modifiers:[{type:'generic.attack_speed',uuid:[1, 1, 1, 1], slot:'mainhand', name:'Sped', amount:1000.0, operation:'add_value'}],show_in_tooltip:false}]