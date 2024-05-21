data modify storage plag:tmp position set from entity @s Pos
execute store result storage plag:tmp x int 1 run data get storage plag:tmp position[0]
execute store result storage plag:tmp y int 1 run data get storage plag:tmp position[1]
execute store result storage plag:tmp z int 1 run data get storage plag:tmp position[2]