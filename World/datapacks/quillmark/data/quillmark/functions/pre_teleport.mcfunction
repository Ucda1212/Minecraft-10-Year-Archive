scoreboard players reset @s quillmark_click

execute in overworld if entity @s[x=119,y=60,z=300,dx=8,dy=10,dz=8] run function quillmark:tp_to_shack
execute in overworld if entity @s[x=97,y=60,z=209,dx=8,dy=10,dz=10] unless entity @s[tag=quillmark_teleporting] run function quillmark:tp_to_castle

execute in overworld if entity @s[x=129,y=60,z=306,dx=10,dy=10,dz=10] run function quillmark:tp_to_dieselpunk
execute in overworld if entity @s[x=180,y=60,z=352,dx=10,dy=10,dz=10] unless entity @s[tag=quillmark_teleporting] run function quillmark:tp_to_castle_from_diesel

execute in overworld if entity @s[x=107,y=60,z=202,dx=10,dy=10,dz=10] run function quillmark:tp_to_acropolis
execute in overworld if entity @s[x=145,y=60,z=186,dx=10,dy=10,dz=10] unless entity @s[tag=quillmark_teleporting] run function quillmark:tp_to_shack_from_acropolis

tag @s remove quillmark_teleporting