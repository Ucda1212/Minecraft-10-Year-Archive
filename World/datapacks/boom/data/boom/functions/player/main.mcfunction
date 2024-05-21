execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{boom.stick:1}}}]}] run function boom:player/get_stick

effect give @s[scores={boom.food=..15}] saturation 3 0 true
effect clear @s[scores={boom.food=..15}] hunger
effect give @s[scores={boom.food=16..}] hunger 3 4 true
effect clear @s[scores={boom.food=16..}] saturation