# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["boom.direction"]}

# summon the projectile entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectile, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes
execute anchored eyes run summon arrow ^ ^ ^0.25 {Tags:["boom.arrow","boom.needs_motion","boom.explosive_arrow"],Passengers:[{id:"marker",Tags:["boom.explosive_tracker","boom.effect"]}]}

# copy the markers position tag to the sheeps motion tag
data modify entity @e[type=arrow,tag=boom.arrow,tag=boom.needs_motion,limit=1] Motion set from entity @e[type=marker,tag=boom.direction,limit=1] Pos

# clean up
tag @e[type=arrow,tag=boom.needs_motion] remove boom.needs_motion
kill @e[type=marker,tag=boom.direction]