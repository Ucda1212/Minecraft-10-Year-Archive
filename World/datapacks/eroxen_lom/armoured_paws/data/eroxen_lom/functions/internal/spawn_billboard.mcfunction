tag @s add eroxen_lom.billboard
data modify entity @s transformation.scale set value [4f,4f,4f]
data modify entity @s transformation.translation set value [0f,4f,0f]
data modify entity @s view_range set value 10f
item replace entity @s container.0 with light[minecraft:block_state={level:"0"}]