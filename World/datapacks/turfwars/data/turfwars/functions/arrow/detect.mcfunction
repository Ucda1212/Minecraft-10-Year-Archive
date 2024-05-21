#[ Arrow Detect ]#

#: identify arrows in block
execute unless entity @s[nbt={inGround:1b}] run return 1

#: destroy block
execute positioned ^ ^ ^-0.1 if block ~ ~ ~ #turfwars:arrow_breakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #turfwars:arrow_breakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ^ ^ ^-0.1 if block ~ ~ ~ #turfwars:arrow_breakable run setblock ~ ~ ~ minecraft:air destroy
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #turfwars:arrow_breakable run setblock ~ ~ ~ minecraft:air destroy

#: kill arrow
kill @s