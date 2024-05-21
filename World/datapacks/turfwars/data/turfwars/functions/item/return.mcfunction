#[ Item Return ]#

#: return item
data modify entity @e[type=item,tag=turfwars.item_return,sort=nearest,limit=1] Owner set from entity @s UUID
tp @e[type=item,tag=turfwars.item_return,sort=nearest,limit=1] @s
