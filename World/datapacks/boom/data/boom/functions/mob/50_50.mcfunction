execute store result score $random boom run random value 0..1
execute if score $random boom matches 0 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:3,Invulnerable:1}
execute if score $random boom matches 1 run summon minecraft:potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}