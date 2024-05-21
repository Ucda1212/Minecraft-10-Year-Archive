setblock 63 69 41 air
particle block{block_state:"minecraft:stone"} 63 69 41 0 0 0 1 2
advancement revoke @s only zeronia:treasure/clickbtn2
schedule function zeronia:treasure/buttons/place2 2s
function zeronia:treasure/buttons/reward