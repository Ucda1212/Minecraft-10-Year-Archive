# Allow players to join
scoreboard players enable @a vrt.tr.join
execute as @a[scores={vrt.tr.join = 1..}] run function tntrun:lobby/handler/join