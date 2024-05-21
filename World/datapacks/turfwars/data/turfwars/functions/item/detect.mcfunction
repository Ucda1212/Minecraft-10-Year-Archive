#[ Item Detect ]#

#: tag item
tag @s add turfwars.item_checked

#: reset pickup delay
data modify entity @s PickupDelay set value 0s

#: item return
tag @s add turfwars.item_return
execute at @s on origin run return run function turfwars:item/return
tag @s remove turfwars.item_return

#: replace item
function turfwars:item/replace

#: kill item
kill @s