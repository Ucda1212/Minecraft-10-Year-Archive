# Allow players to quit
scoreboard players enable @a vrt.tr.quit
execute as @a[scores={vrt.tr.quit=1..}] run function tntrun:lobby/handler/quit
