setblock 61 69 43 air
particle block{block_state:"minecraft:stone"} 61 69 43 0 0 0 1 2
advancement revoke @s only zeronia:treasure/clickbtn3
schedule function zeronia:treasure/buttons/place3 2s
function zeronia:treasure/buttons/reward