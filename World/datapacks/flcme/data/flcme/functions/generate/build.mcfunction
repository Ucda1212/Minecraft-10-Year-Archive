

##
## THIS FUNCTION IS IN LIKE EXTREMELY EXTREMELY EXPERIMENTAL PHASE I WILL MAKE IT LOOK NICER IN THE FUTURE
##
clone 278 55 -16 278 55 -16 278 55 -15
## Clearing out old builds from previous rounds.
fill 279 62 -13 278 55 -20 air
fill 276 56 -13 269 56 -20 air
fill 276 55 -13 269 55 -20 yellow_concrete
fill 276 55 -13 269 55 -20 hopper
clone 276 57 -13 269 57 -20 269 56 -20
tellraw @a[tag=flcme.dev] [{"text":"Builds cleared","color":"green"}]


## Spreading TNTS around on the board randomly.
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
summon marker 272.999 56 -15.999 {data:{flcme:"TNT"}}
spreadplayers 272.999 -15.999 1 5 false @e[type=marker,nbt={data:{flcme:"TNT"}}]
execute as @e[nbt={data:{flcme:"TNT"}}] at @s if block ~ 55 ~ orange_wool run spreadplayers 272.999 -15.999 1 4 false @s
execute as @e[nbt={data:{flcme:"TNT"}}] at @s run tp @s ~ 55 ~
execute as @e[nbt={data:{flcme:"TNT"}}] at @s run scoreboard players add @e[nbt={data:{flcme:"TNT"}},distance=..1] flcme.value 1
execute as @e[nbt={data:{flcme:"TNT"}}] unless score @s flcme.value matches 1 run kill @s
execute at @e[nbt={data:{flcme:"TNT"}}] run clone 278 55 -11 278 55 -11 ~ 56 ~
tellraw @a[tag=flcme.dev] [{"text":"TNT Build complete","color":"green"}]


## Selecting how much density is around each TNT. (The you ConDuIt system. (Fun Fact: you ConNotDuIt with this system.))
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~ 55 ~-1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~ 55 ~1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~1 55 ~ loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~-1 55 ~ loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~-1 55 ~-1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~1 55 ~-1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~-1 55 ~1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run loot insert ~1 55 ~1 loot minecraft:blocks/conduit
execute at @e[nbt={data:{flcme:"TNT"}}] run setblock ~ 55 ~ bedrock
clone 278 55 -16 278 55 -16 278 55 -15


## Checking for density then determining number location.
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~1 ~ ~ run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~-1 ~ ~ run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~ ~ ~-1 run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~ ~ ~1 run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~1 ~ ~1 run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~-1 ~ ~-1 run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~-1 ~ ~1 run function flcme:generate/display
execute at @e[nbt={data:{flcme:"TNT"}}] positioned ~1 ~ ~-1 run function flcme:generate/display
kill @e[nbt={data:{flcme:"TNT"}}]
schedule function flcme:generate/frame 2t
