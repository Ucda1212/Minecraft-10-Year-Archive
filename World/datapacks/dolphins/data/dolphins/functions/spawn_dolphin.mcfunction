#> dolphins:spawn_dolphin
scoreboard players reset @s dolphin
summon dolphin ~ ~ ~ {Tags:["dolphins.ride","dolphins.needs_rider"]}
ride @s mount @e[type=dolphin,tag=dolphins.ride,tag=dolphins.needs_rider,sort=nearest,limit=1]
execute on vehicle run tag @s remove dolphins.needs_rider
execute on vehicle run effect give @s minecraft:speed infinite 32 true
execute on vehicle run effect give @s minecraft:resistance infinite 127 true
execute on vehicle on passengers run tag @s add dolphins.rider