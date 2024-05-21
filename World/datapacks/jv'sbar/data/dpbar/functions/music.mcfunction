execute positioned 330 85 373 run stopsound @a[distance=..100] record
execute store result score calc dpbar.rng run random value 0..9

execute if score calc dpbar.rng matches 0 positioned 330 85 373 run playsound minecraft:music_disc.stal record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 1 positioned 330 85 373 run playsound minecraft:music_disc.blocks record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 2 positioned 330 85 373 run playsound minecraft:music_disc.ward record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 3 positioned 330 85 373 run playsound minecraft:music_disc.wait record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 4 positioned 330 85 373 run playsound minecraft:music_disc.strad record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 5 positioned 330 85 373 run playsound minecraft:music_disc.otherside record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 6 positioned 330 85 373 run playsound minecraft:music_disc.pigstep record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 7 positioned 330 85 373 run playsound minecraft:music_disc.far record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 8 positioned 330 85 373 run playsound minecraft:music_disc.chirp record @a[distance=..100] ~ ~ ~ 1 1 0
execute if score calc dpbar.rng matches 9 positioned 330 85 373 run playsound minecraft:music_disc.cat record @a[distance=..100] ~ ~ ~ 1 1 0
# execute if score calc dpbar.rng matches 10 positioned 330 85 373 run playsound minecraft:music_disc.stal record @a[distance=..100] ~ ~ ~ 1 1 0

# minecraft:music_disc.blocks, ward, wait, strad, otherside, pigstep, far, shirp, cat

schedule function dpbar:music 180s replace
