#> bnsd:ingame/start

playsound minecraft:block.amethyst_block.resonate master @a[tag=bnsd.player] -361.5 51.0 -207.0 1 1

## set gamestate
scoreboard players set .gamestate bnsd.main 1

## Remove signs
setblock -356 52 -196 air
setblock -355 72 -198 air


## teleport players
tp @a[tag=bnsd.player] -361.5 51.0 -207.0 90 ~
#effect give @a[tag=bnsd.player] minecraft:invisibility infinite 1 true

## init water
scoreboard players set .waterlevel bnsd.main 0
summon armor_stand -356 51 -198 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["bnsd.waterlevel","bnsd"]}

schedule function bnsd:ingame/raisewater 90t

## set hearts
scoreboard players set @a[tag=bnsd.player] bnsd.hearts 3