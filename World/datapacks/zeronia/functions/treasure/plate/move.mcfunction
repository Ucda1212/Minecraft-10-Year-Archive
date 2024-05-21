scoreboard players add .cur zeronia.step_plate 1
execute if score .cur zeronia.step_plate >= .max zeronia.step_plate run scoreboard players set .cur zeronia.step_plate 0

fill 99 85 24 101 85 30 air replace minecraft:light_weighted_pressure_plate

execute if score .cur zeronia.step_plate matches 0 run setblock 100 85 27 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 1 run setblock 101 85 24 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 2 run setblock 100 85 28 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 3 run setblock 101 85 26 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 4 run setblock 99 85 27 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 5 run setblock 100 85 25 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 6 run setblock 101 85 27 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 7 run setblock 100 85 24 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 8 run setblock 100 85 30 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 9 run setblock 100 85 26 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 10 run setblock 101 85 28 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 11 run setblock 99 85 26 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 12 run setblock 100 85 29 light_weighted_pressure_plate
execute if score .cur zeronia.step_plate matches 13 run setblock 101 85 25 light_weighted_pressure_plate

scoreboard players add @s zeronia.step_plate 1
execute if score @s zeronia.step_plate >= .max zeronia.step_plate run function zeronia:treasure/plate/reward