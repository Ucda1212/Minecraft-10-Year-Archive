scoreboard players set $tracker boom 1
execute on vehicle run scoreboard players set $tracker boom 0
execute if score $tracker boom matches 0 run return 1
summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:2,Invulnerable:1}
kill @s