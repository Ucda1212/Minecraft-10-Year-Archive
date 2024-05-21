# Per Mob
execute as @s[tag=boom.spider] run function boom:mob/web
execute as @s[tag=boom.blaze] run function boom:mob/fire
execute as @s[tag=boom.villager] run function boom:mob/heal
execute as @s[tag=boom.wandering_trader] run function boom:mob/50_50
execute as @s[tag=boom.polar_bear] run function boom:mob/speed
execute as @s[tag=boom.snow_golem] run function boom:mob/slow

# Explosion
execute if score @s boom.radius matches 1 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:1,Invulnerable:1,CustomName:'"vague explosive material."'}
execute if score @s boom.radius matches 2 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:2,Invulnerable:1,CustomName:'"vague explosive material."'}
execute if score @s boom.radius matches 3 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:3,Invulnerable:1,CustomName:'"vague explosive material."'}
execute if score @s boom.radius matches 4 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:4,Invulnerable:1,CustomName:'"vague explosive material."'}
execute if score @s boom.radius matches 5 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:5,Invulnerable:1,CustomName:'"vague explosive material."'}
execute if score @s boom.radius matches 6 run summon creeper ~ 107 ~ {Fuse:0s,ExplosionRadius:6,Invulnerable:1,CustomName:'"vague explosive material."'}

# Bye bye
execute as @s[type=!player] run tp @s ~ ~-1000 ~
execute as @s[type=!player] run kill @s