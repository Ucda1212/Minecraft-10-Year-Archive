#> common:spawn/musicbar/play

stopsound @s record minecraft:music_disc.pigstep
stopsound @s record minecraft:music_disc.wait
stopsound @s record minecraft:music_disc.chirp
stopsound @s record minecraft:music_disc.otherside
stopsound @s record minecraft:music_disc.strad
stopsound @s record minecraft:music_disc.ward


execute if score .music spawn.temp matches 0 run playsound minecraft:music_disc.pigstep record @s
execute if score .music spawn.temp matches 1 run playsound minecraft:music_disc.wait record @s
execute if score .music spawn.temp matches 2 run playsound minecraft:music_disc.chirp record @s
execute if score .music spawn.temp matches 3 run playsound minecraft:music_disc.otherside record @s
execute if score .music spawn.temp matches 4 run playsound minecraft:music_disc.strad record @s
execute if score .music spawn.temp matches 5 run playsound minecraft:music_disc.ward record @s

