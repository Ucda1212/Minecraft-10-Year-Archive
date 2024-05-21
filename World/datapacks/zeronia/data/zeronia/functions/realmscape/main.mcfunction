execute as @e[tag=zeronia.realmscape.particle] at @s run tp @s ~ ~ ~ ~16 ~
execute as @e[tag=zeronia.realmscape.particle] at @s anchored eyes positioned ^ ^ ^.6 run particle firework
execute as @e[tag=zeronia.realmscape.particle] at @s anchored eyes positioned ^ ^ ^-.6 run particle firework
execute as @e[tag=zeronia.realmscape.particle] at @s anchored eyes positioned ^ ^ ^.6 run particle end_rod
execute as @e[tag=zeronia.realmscape.particle] at @s anchored eyes positioned ^ ^ ^-.6 run particle end_rod

schedule function zeronia:realmscape/main 4t