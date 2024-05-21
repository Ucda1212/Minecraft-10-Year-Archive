#> common:spawn/musicbar/start


execute store result score .music spawn.temp run random value 0..5
execute positioned -23 63 -31 as @a[distance=..20] run function common:spawn/musicbar/music

